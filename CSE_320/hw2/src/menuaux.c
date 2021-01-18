#include <stdio.h>
#include <ctype.h>

#include "../include/toolsdir/sys5.h"

#ifdef TMC
#include <ctools.h>
#else
#include "../include/toolsdir/ctools.h"
#endif
#include "../include/toolsdir/menu.h"

#include "../include/rolofiles.h"
#include "../include/rolodefs.h"
#include "../include/datadef.h"
#include "../include/functions.h"


int rolo_menu_yes_no (char* prompt, int rtn_default, int help_allowed, char* helpfile, char* subject)
  
{
  int rval;
  reask :
  rval = menu_yes_no_abort_or_help (
              prompt,ABORTSTRING,help_allowed,rtn_default
           );
  switch (rval) {
    case MENU_EOF :
      user_eof();
      break;
    case MENU_HELP : 
      cathelpfile(libdir(helpfile),subject,1);
      goto reask;
      break;
    default :
      return(rval);
      break;
  }
    return 0;
}
  

int rolo_menu_data_help_or_abort (char* prompt, char* helpfile, char* subject, char** ptr_response)

  
{ 
  int rval;
  reask :
  rval = menu_data_help_or_abort(prompt,ABORTSTRING,ptr_response);
  if (rval == MENU_HELP) {
     cathelpfile(libdir(helpfile),subject,1);
     goto reask;
  }     
  return(rval);
}
     

int rolo_menu_number_help_or_abort (char* prompt, int low, int high,int* ptr_ival)
  
{  
  int rval;
  if (MENU_EOF == (rval = menu_number_help_or_abort (prompt,ABORTSTRING,low,high,ptr_ival)))
     user_eof();
  return(rval);
}
