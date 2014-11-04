% simple quick sort 

-module(ex00).
-export([f/0]).

f()->
	sort([5,19,0,2,4,3,18,7]).

sort([Pivot|T]) ->
    sort([ X || X <- T, X < Pivot]) ++ [Pivot] ++ sort([ X || X <- T, X >= Pivot]);
sort([]) -> [].

%public class Quicksort {
%	private int[] numbers;
%	private int number;
%	public void sort(int[] values) {
%		if (values == null || values.length == 0)
%			return;
%		this.numbers = values;
%		number = values.length;
%		quicksort(0, number - 1);
%	}
%
%	private void quicksort(int low, int high) {
%		int i = low, j = high;
%		int pivot = numbers[low + (high - low) / 2];
%		while (i <= j) {
%			while (numbers[i] < pivot)
%				i++;
%			while (numbers[j] > pivot)
%				j--;
%			if (i <= j) {
%				exchange(i, j);
%				i++;
%				j--;
%			}
%		}
%		if (low < j)
%			quicksort(low, j);
%		if (i < high)
%			quicksort(i, high);
%	}
%
%	private void exchange(int i, int j) {
%		int temp = numbers[i];
%		numbers[i] = numbers[j];
%		numbers[j] = temp;
%	}
%
%	public static void main(String[] args) {
%		new Quicksort().start();
%	}
%
%	public void start() {
%		int[] ar = new int[] { 5, 19, 0, 2, 4, 3, 18, 7 };
%		sort(ar);
%		for (int a : ar)
%			System.out.print(a + ",");
%	}
%}
