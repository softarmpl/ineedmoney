from django.db import models
from django.contrib.auth.models import User
from model_utils.models import TimeStampedModel
from django.utils import timezone
from colorful.fields import RGBColorField


class NamedModel(TimeStampedModel):
  """ Base model is a Timestamped model
      with name field, which is used as model string representation
  """
  name = models.CharField(max_length=120, unique=True)

  class Meta:
    abstract = True
    ordering = ['name']

  def __str__(self):
    return self.name


class Budget(NamedModel):
  user = models.ForeignKey(User, on_delete=models.CASCADE)


class Category(NamedModel):
  color = RGBColorField(default='#2d4d80')


class Target(NamedModel):
  amount = models.DecimalField(max_digits=9, decimal_places=2)


class Payee(NamedModel):
  pass


class Item(NamedModel):
  INCOME = 'income'
  EXPENSE = 'expense'
  DIRECTION_CHOICES = [
    (INCOME, 'Income'),
    (EXPENSE, 'Expense'),
  ]
  name = models.CharField(max_length=120)
  direction = models.CharField(max_length=120,
                                choices=DIRECTION_CHOICES,
                                default=EXPENSE)
  amount = models.DecimalField(max_digits=9, decimal_places=2)
  category = models.ForeignKey(Category, models.SET_NULL, blank=True, null=True)
  date = models.DateTimeField(default=timezone.now, blank=True)
  notes = models.CharField(max_length=300, blank=True, default='')
  payee = models.ManyToManyField(Payee)
  # split = models.BooleanField(default=False)
  target = models.ForeignKey(Target, blank=True, null=True, on_delete=None)
  budget = models.ForeignKey(Budget, on_delete=None, null=True, blank=True)

  def save(self, *args, **kwargs):
    self.budget = Budget.objects.last()
    super().save(*args, **kwargs)