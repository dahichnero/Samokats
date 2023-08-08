using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Samokats.Commands
{
    public class RelayCommand : ICommand
    {
        // действие, которое выполняется
        private readonly Action<object?> action;

        // предикат, определяющий доступность команды
        private readonly Func<object?, bool> canExecute;

        // логика назначения/снятия event, реализация ICommand
        public event EventHandler? CanExecuteChanged
        {
            add
            {
                CommandManager.RequerySuggested += value;
            }
            remove
            {
                CommandManager.RequerySuggested -= value;
            }
        }

        // конструкторы
        public RelayCommand(Action<object?> action, Func<object?, bool> canExecute)
        {
            this.action = action;
            this.canExecute = canExecute;
        }

        public RelayCommand(Action<object?> action)
        {
            this.action = action;
            canExecute = _ => true; // если второго параметра нет, то функция, заведомо возвращающая истину f(x) -> true
        }

        // вызовы необходимых функций, реализация ICommand
        public bool CanExecute(object? parameter)
        {
            if (canExecute is null)
            {
                return true;
            }
            return canExecute.Invoke(parameter);
        }

        public void Execute(object? parameter)
        {
            action?.Invoke(parameter);
        }
    }
}
