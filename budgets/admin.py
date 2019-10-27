from django.db.models import Sum
from django.contrib import admin
from decimal import Decimal
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
  list_filter = ('category__name', 'target__name', 'budget__name')


admin.site.register(budget_models.Category)
admin.site.register(budget_models.Payee)
