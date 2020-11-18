```
__block NSInteger timeOut = 10;
dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);

dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
dispatch_source_set_event_handler(_timer, ^{
    if (timeOut <= 0) {
        dispatch_source_cancel(_timer);
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"from dispatch async!!!!");
        });

        NSLog(@"from dispatch source set event handler!!!");
    } else {
        timeOut--;
        NSLog(@"time out is: %ld", (long)timeOut);
    }
});

dispatch_resume(_timer);
```
