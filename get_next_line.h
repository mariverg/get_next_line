/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mariverg <mariverg@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/13 14:45:50 by mariverg          #+#    #+#             */
/*   Updated: 2024/02/27 15:38:59 by mariverg         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H
# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 42
# endif

# include <fcntl.h>
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>

typedef struct s_list
{
	char			*str_buf;
	struct s_list	*next;
}					t_list;

char	*get_next_line(int fd);
void	create_list(t_list **list, int fd);
void	append(t_list **list, char *buf);
char	*get_line(t_list *list);
int		len_newline(t_list *list);
void	str_copy(t_list *list, char *str);
int		newline_found(t_list *list);
t_list	*find_last_node(t_list *list);
void	dealloc(t_list **list, t_list *clean_node, char *buf);
void	clean_list(t_list **list);
#endif