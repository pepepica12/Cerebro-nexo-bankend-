.class public final Lkotlinx/coroutines/flow/StateFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "StateFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableStateFlow;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,433:1\n14#2:434\n14#2:442\n27#3:435\n27#3:439\n16#4:436\n16#4:440\n13346#5,2:437\n326#6:441\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n320#1:434\n401#1:442\n329#1:435\n357#1:439\n329#1:436\n357#1:440\n353#1:437,2\n390#1:441\n*E\n"
.end annotation


# static fields
.field public static final synthetic _state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public sequence:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    const-class v0, Ljava/lang/Object;

    const-string v1, "_state$volatile"

    const-class v2, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "initialState"    # Ljava/lang/Object;

    .line 315
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;-><init>()V

    .line 316
    iput-object p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state$volatile:Ljava/lang/Object;

    .line 313
    return-void
.end method

.method public static final synthetic get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 0
    sget-object v0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 4

    .line 320
    sget-object v0, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/flow/StateFlowImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 14
    .local v2, "$i$f$unbox":I
    if-ne v1, v0, :cond_0

    const/4 v3, 0x0

    move-object v1, v3

    .line 320
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$unbox":I
    :cond_0
    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 321
    if-nez p1, :cond_0

    sget-object v0, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "expectedState"    # Ljava/lang/Object;
    .param p2, "newState"    # Ljava/lang/Object;

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "curSequence":I
    const/4 v1, 0x0

    .line 329
    .local v1, "curSlots":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 27
    .local v2, "$i$f$synchronized":I
    const/4 v3, 0x0

    .line 16
    .local v3, "$i$f$synchronizedImpl":I
    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/flow/StateFlowImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    .line 330
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 331
    .local v5, "oldState":Ljava/lang/Object;
    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$f$synchronizedImpl":I
    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v5    # "oldState":Ljava/lang/Object;
    monitor-exit p0

    return v6

    .line 16
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$f$synchronizedImpl":I
    :catchall_0
    move-exception v4

    goto/16 :goto_3

    .line 332
    .restart local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .restart local v5    # "oldState":Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$f$synchronizedImpl":I
    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v5    # "oldState":Ljava/lang/Object;
    monitor-exit p0

    return v8

    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$f$synchronizedImpl":I
    .restart local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .restart local v5    # "oldState":Ljava/lang/Object;
    :cond_1
    :try_start_2
    invoke-static {}, Lkotlinx/coroutines/flow/StateFlowImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    .line 333
    invoke-virtual {v7, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    iget v7, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    move v0, v7

    .line 335
    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_6

    .line 336
    add-int/lit8 v0, v0, 0x1

    .line 337
    iput v0, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    .line 343
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v7

    move-object v1, v7

    .line 344
    nop

    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v5    # "oldState":Ljava/lang/Object;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    monitor-exit p0

    .line 27
    .end local v3    # "$i$f$synchronizedImpl":I
    nop

    .line 351
    .end local v2    # "$i$f$synchronized":I
    :goto_0
    nop

    .line 353
    move-object v2, v1

    check-cast v2, [Lkotlinx/coroutines/flow/StateFlowSlot;

    nop

    if-eqz v2, :cond_4

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 13346
    .local v3, "$i$f$forEach":I
    array-length v4, v2

    move v5, v6

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v7, v2, v5

    const/4 v7, 0x0

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v9, v7

    .local v9, "it":Lkotlinx/coroutines/flow/StateFlowSlot;
    const/4 v10, 0x0

    .line 354
    .local v10, "$i$a$-forEach-StateFlowImpl$updateState$2":I
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowSlot;->makePending()V

    .line 355
    :cond_2
    nop

    .line 13346
    .end local v9    # "it":Lkotlinx/coroutines/flow/StateFlowSlot;
    .end local v10    # "$i$a$-forEach-StateFlowImpl$updateState$2":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 438
    :cond_3
    nop

    .line 357
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    :cond_4
    const/4 v2, 0x0

    .line 27
    .local v2, "$i$f$synchronized":I
    const/4 v3, 0x0

    .line 16
    .local v3, "$i$f$synchronizedImpl":I
    monitor-enter p0

    const/4 v4, 0x0

    .line 358
    .local v4, "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    :try_start_3
    iget v5, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    if-ne v5, v0, :cond_5

    .line 359
    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 360
    nop

    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$f$synchronizedImpl":I
    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    monitor-exit p0

    return v8

    .line 16
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$f$synchronizedImpl":I
    :catchall_1
    move-exception v4

    goto :goto_2

    .line 363
    .restart local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    :cond_5
    :try_start_4
    iget v5, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    move v0, v5

    .line 364
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v5

    move-object v1, v5

    .line 365
    nop

    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 16
    monitor-exit p0

    .line 27
    .end local v3    # "$i$f$synchronizedImpl":I
    nop

    .end local v2    # "$i$f$synchronized":I
    goto :goto_0

    .line 16
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$f$synchronizedImpl":I
    :goto_2
    monitor-exit p0

    throw v4

    .line 340
    .local v4, "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .restart local v5    # "oldState":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v6, v0, 0x2

    :try_start_5
    iput v6, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 341
    nop

    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$f$synchronizedImpl":I
    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v5    # "oldState":Ljava/lang/Object;
    monitor-exit p0

    return v8

    .line 16
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$f$synchronizedImpl":I
    :goto_3
    monitor-exit p0

    throw v4
.end method
