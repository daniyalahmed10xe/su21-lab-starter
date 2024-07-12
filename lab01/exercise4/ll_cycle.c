#include <stddef.h>
#include "ll_cycle.h"

int ll_has_cycle(node *head)
{
	struct node *fast_ptr = NULL, *slow_ptr = NULL;
	
	if(head != NULL && head->next->next != NULL)
	{
		fast_ptr = head->next->next;
		slow_ptr = head->next;
		
		while(fast_ptr != slow_ptr)
		{
			if(fast_ptr->next == NULL || fast_ptr->next->next == NULL)
			{
				return 0;
			}
			else
			{
				fast_ptr = fast_ptr->next->next;
				slow_ptr = slow_ptr->next;
			}
		}
		
		return 1;
	}
	else
	{
		return 0;
	}
}
