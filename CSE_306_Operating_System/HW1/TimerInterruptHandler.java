package osp.Threads;

import osp.IFLModules.*;
import osp.Utilities.*;
import osp.Hardware.*;

/**    
       The timer interrupt handler.  This class is called upon to
       handle timer interrupts.

       @OSPProject Threads

       Xiangshuai Gao
       • student Id: 110930549
       • the following pledge:
       I pledge my honor that all parts of this project were done by me individually, without
       collaboration with anyone, and without consulting any external sources that provide
       full or partial solutions to a similar project.
       I understand that breaking this pledge will result in an “F” for the entire course.
*/
public class TimerInterruptHandler extends IflTimerInterruptHandler
{
    /**
       This basically only needs to reset the times and dispatch
       another process.

       @OSPProject Threads
    */

    public void do_handleInterrupt()
    {
        // your code goes here
        ThreadCB.dispatch();

    }


    /*
       Feel free to add methods/fields to improve the readability of your code
    */

}

/*
      Feel free to add local classes to improve the readability of your code
*/
