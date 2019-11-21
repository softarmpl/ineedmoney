import json
from decimal import Decimal

from django.db.models import Sum, F, Q
from django.contrib import admin
from django.core import serializers
from django.core.serializers.json import DjangoJSONEncoder
from datetime import datetime
from rangefilter.filter import DateRangeFilter

from . import models as budget_models


@admin.register(budget_models.Budget)
class BudgetAdmin(admin.ModelAdmin):
    pass


@admin.register(budget_models.Target)
class BudgetAdmin(admin.ModelAdmin):
    list_display = ('name', 'amount', 'items_amount', 'balance',)

    def get_queryset(self, request):

        queryset = super().get_queryset(request)
        queryset = queryset.annotate(
            _items_amount=Sum('item__amount'),
        )
        return queryset

    def items_amount(self, obj):
        return obj._items_amount

    def balance(self, obj):
        return obj.amount - (obj._items_amount or Decimal(0.0))


@admin.register(budget_models.Item)
class ItemAdmin(admin.ModelAdmin):
    list_display = ('name', 'amount', 'category', 'date', 'target', 'budget',)
    search_fields = ('name',)
    list_filter = ('category__name', 'target__name', 'budget__name',
                    ('date', DateRangeFilter))

    def get_changeform_initial_data(self, request):
        initial_data = super().get_changeform_initial_data(request)
        initial_data.update({

        })
        return initial_data

    def get_queryset(self, request):
        queryset = super().get_queryset(request)
        return queryset

    def changelist_view(self, request, extra_context=None):
        response = super().changelist_view(request, extra_context=extra_context)
        qs = response.context_data['cl'].queryset

        categories_sum = qs.filter(direction=budget_models.Item.EXPENSE) \
            .values('category__name', 'category__color') \
            .annotate(Sum('amount')).order_by('category')
        category_data = json.dumps(list(categories_sum), cls=DjangoJSONEncoder)

        income_expenses = qs.values('direction').annotate(Sum('amount')).order_by('direction')
        income_expenses_data = json.dumps(list(income_expenses), cls=DjangoJSONEncoder)

        response.context_data['category_data'] = category_data
        response.context_data['income_expenses'] = income_expenses_data
        return response


admin.site.register(budget_models.Category)
admin.site.register(budget_models.Payee)
