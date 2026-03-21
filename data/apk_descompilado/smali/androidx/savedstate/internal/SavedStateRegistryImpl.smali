.class public final Landroidx/savedstate/internal/SavedStateRegistryImpl;
.super Ljava/lang/Object;
.source "SavedStateRegistryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/internal/SavedStateRegistryImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavedStateRegistryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateRegistryImpl.kt\nandroidx/savedstate/internal/SavedStateRegistryImpl\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 3 SynchronizedObject.kt\nandroidx/savedstate/internal/SynchronizedObjectKt\n+ 4 SynchronizedObject.jvm.kt\nandroidx/savedstate/internal/SynchronizedObject_jvmKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 7 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 8 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,154:1\n90#2:155\n106#2:156\n90#2:157\n90#2:165\n106#2:187\n90#2:190\n106#2:191\n41#3:158\n41#3:160\n41#3:162\n41#3:188\n23#4:159\n23#4:161\n23#4:163\n23#4:189\n1#5:164\n1#5:186\n27#6:166\n47#6:167\n32#6,4:168\n31#6,8:178\n126#7:172\n153#7,3:173\n37#8,2:176\n*S KotlinDebug\n*F\n+ 1 SavedStateRegistryImpl.kt\nandroidx/savedstate/internal/SavedStateRegistryImpl\n*L\n55#1:155\n56#1:156\n57#1:157\n121#1:165\n135#1:187\n144#1:190\n145#1:191\n66#1:158\n75#1:160\n84#1:162\n137#1:188\n66#1:159\n75#1:161\n84#1:163\n137#1:189\n135#1:186\n135#1:166\n135#1:167\n135#1:168,4\n135#1:178,8\n135#1:172\n135#1:173,3\n135#1:176,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/savedstate/internal/SavedStateRegistryImpl$Companion;


# instance fields
.field public attached:Z

.field public isAllowingSavingState:Z

.field public isRestored:Z

.field public final keyToProviders:Ljava/util/Map;

.field public final lock:Landroidx/savedstate/internal/SynchronizedObject;

.field public final onAttach:Lkotlin/jvm/functions/Function0;

.field public final owner:Landroidx/savedstate/SavedStateRegistryOwner;

.field public restoredState:Landroid/os/Bundle;


# direct methods
.method public static synthetic $r8$lambda$6xnOyEL_uTccN7fW0CY8JkIx-HI(Landroidx/savedstate/internal/SavedStateRegistryImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performAttach$lambda$12(Landroidx/savedstate/internal/SavedStateRegistryImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/savedstate/internal/SavedStateRegistryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/savedstate/internal/SavedStateRegistryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->Companion:Landroidx/savedstate/internal/SavedStateRegistryImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "owner"    # Landroidx/savedstate/SavedStateRegistryOwner;
    .param p2, "onAttach"    # Lkotlin/jvm/functions/Function0;

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAttach"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 32
    iput-object p2, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->onAttach:Lkotlin/jvm/functions/Function0;

    .line 35
    new-instance v0, Landroidx/savedstate/internal/SynchronizedObject;

    invoke-direct {v0}, Landroidx/savedstate/internal/SynchronizedObject;-><init>()V

    iput-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->lock:Landroidx/savedstate/internal/SynchronizedObject;

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->keyToProviders:Ljava/util/Map;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isAllowingSavingState:Z

    .line 30
    return-void
.end method

.method public static final synthetic access$getKeyToProviders$p(Landroidx/savedstate/internal/SavedStateRegistryImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 30
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->keyToProviders:Ljava/util/Map;

    return-object v0
.end method

.method public static final performAttach$lambda$12(Landroidx/savedstate/internal/SavedStateRegistryImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p0, "this$0"    # Landroidx/savedstate/internal/SavedStateRegistryImpl;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 98
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isAllowingSavingState:Z

    goto :goto_0

    .line 99
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 100
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isAllowingSavingState:Z

    .line 102
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isRestored:Z

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->restoredState:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 55
    .local v0, "state":Landroid/os/Bundle;
    :cond_0
    move-object v2, v0

    .local v2, "$this$read$iv":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 90
    .local v3, "$i$f$read":I
    invoke-static {v2}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .local v4, "$this$consumeRestoredStateForKey_u24lambda_u242":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 55
    .local v5, "$i$a$-read-SavedStateRegistryImpl$consumeRestoredStateForKey$consumed$1":I
    invoke-static {v4, p1}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4, p1}, Landroidx/savedstate/SavedStateReader;->getSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v1

    .line 90
    .end local v4    # "$this$consumeRestoredStateForKey_u24lambda_u242":Landroid/os/Bundle;
    .end local v5    # "$i$a$-read-SavedStateRegistryImpl$consumeRestoredStateForKey$consumed$1":I
    :goto_0
    nop

    .line 55
    .end local v2    # "$this$read$iv":Landroid/os/Bundle;
    .end local v3    # "$i$f$read":I
    nop

    .line 56
    .local v6, "consumed":Landroid/os/Bundle;
    move-object v2, v0

    .local v2, "$this$write$iv":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 106
    .local v3, "$i$f$write":I
    invoke-static {v2}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .local v4, "$this$consumeRestoredStateForKey_u24lambda_u243":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 56
    .local v5, "$i$a$-write-SavedStateRegistryImpl$consumeRestoredStateForKey$2":I
    invoke-static {v4, p1}, Landroidx/savedstate/SavedStateWriter;->remove-impl(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 106
    .end local v4    # "$this$consumeRestoredStateForKey_u24lambda_u243":Landroid/os/Bundle;
    .end local v5    # "$i$a$-write-SavedStateRegistryImpl$consumeRestoredStateForKey$2":I
    nop

    .line 57
    .end local v2    # "$this$write$iv":Landroid/os/Bundle;
    .end local v3    # "$i$f$write":I
    nop

    .local v2, "$this$read$iv":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 90
    .local v3, "$i$f$read":I
    invoke-static {v2}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .local v4, "$this$consumeRestoredStateForKey_u24lambda_u244":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 57
    .local v5, "$i$a$-read-SavedStateRegistryImpl$consumeRestoredStateForKey$3":I
    invoke-static {v4}, Landroidx/savedstate/SavedStateReader;->isEmpty-impl(Landroid/os/Bundle;)Z

    move-result v4

    .line 90
    .end local v4    # "$this$consumeRestoredStateForKey_u24lambda_u244":Landroid/os/Bundle;
    .end local v5    # "$i$a$-read-SavedStateRegistryImpl$consumeRestoredStateForKey$3":I
    nop

    .line 57
    .end local v2    # "$this$read$iv":Landroid/os/Bundle;
    .end local v3    # "$i$f$read":I
    if-eqz v4, :cond_2

    .line 58
    iput-object v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->restoredState:Landroid/os/Bundle;

    .line 61
    :cond_2
    return-object v6

    .line 48
    .end local v0    # "state":Landroid/os/Bundle;
    .end local v6    # "consumed":Landroid/os/Bundle;
    :cond_3
    const/4 v0, 0x0

    .line 49
    .local v0, "$i$a$-check-SavedStateRegistryImpl$consumeRestoredStateForKey$1":I
    nop

    .line 50
    nop

    .line 48
    .end local v0    # "$i$a$-check-SavedStateRegistryImpl$consumeRestoredStateForKey$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can \'consumeRestoredStateForKey\' only after the corresponding component has moved to the \'CREATED\' state"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSavedStateProvider(Ljava/lang/String;)Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->lock:Landroidx/savedstate/internal/SynchronizedObject;

    .local v0, "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    const/4 v1, 0x0

    .line 41
    .local v1, "$i$f$synchronized":I
    move-object v2, v0

    .local v2, "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    const/4 v3, 0x0

    .line 23
    .local v3, "$i$f$synchronizedImpl":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 76
    .local v4, "$i$a$-synchronized-SavedStateRegistryImpl$getSavedStateProvider$1":I
    :try_start_0
    invoke-static {p0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->access$getKeyToProviders$p(Landroidx/savedstate/internal/SavedStateRegistryImpl;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    const/4 v8, 0x0

    .local v8, "$i$a$-firstNotNullOfOrNull-SavedStateRegistryImpl$getSavedStateProvider$1$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "k":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 77
    .local v6, "provider":Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_1

    move-object v7, v6

    .line 76
    .end local v6    # "provider":Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .end local v8    # "$i$a$-firstNotNullOfOrNull-SavedStateRegistryImpl$getSavedStateProvider$1$1":I
    .end local v9    # "k":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_0

    :cond_2
    goto :goto_0

    .line 23
    .end local v4    # "$i$a$-synchronized-SavedStateRegistryImpl$getSavedStateProvider$1":I
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 78
    .restart local v4    # "$i$a$-synchronized-SavedStateRegistryImpl$getSavedStateProvider$1":I
    :goto_0
    nop

    .line 23
    .end local v4    # "$i$a$-synchronized-SavedStateRegistryImpl$getSavedStateProvider$1":I
    monitor-exit v2

    .line 41
    .end local v2    # "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .end local v3    # "$i$f$synchronizedImpl":I
    nop

    .line 75
    .end local v0    # "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .end local v1    # "$i$f$synchronized":I
    return-object v7

    .line 23
    .restart local v0    # "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .restart local v3    # "$i$f$synchronizedImpl":I
    :goto_1
    monitor-exit v2

    throw v4
.end method

.method public final isAllowingSavingState$savedstate()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isAllowingSavingState:Z

    return v0
.end method

.method public final performAttach()V
    .locals 3

    .line 89
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 92
    iget-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->attached:Z

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->onAttach:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 96
    nop

    .line 95
    new-instance v1, Landroidx/savedstate/internal/SavedStateRegistryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/savedstate/internal/SavedStateRegistryImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 104
    iput-boolean v2, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->attached:Z

    .line 105
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "$i$a$-check-SavedStateRegistryImpl$performAttach$2":I
    nop

    .end local v0    # "$i$a$-check-SavedStateRegistryImpl$performAttach$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SavedStateRegistry was already attached."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    const/4 v0, 0x0

    .line 90
    .local v0, "$i$a$-check-SavedStateRegistryImpl$performAttach$1":I
    nop

    .line 89
    .end local v0    # "$i$a$-check-SavedStateRegistryImpl$performAttach$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final performRestore$savedstate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 112
    iget-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->attached:Z

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performAttach()V

    .line 115
    :cond_0
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 118
    iget-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isRestored:Z

    if-nez v0, :cond_3

    .line 120
    nop

    .line 121
    const/4 v0, 0x0

    nop

    if-eqz p1, :cond_2

    move-object v1, p1

    .local v1, "$this$read$iv":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$f$read":I
    invoke-static {v1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .local v3, "$this$performRestore_u24lambda_u2415":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 122
    .local v4, "$i$a$-read-SavedStateRegistryImpl$performRestore$3":I
    const-string v5, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-static {v3, v5}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v3, v5}, Landroidx/savedstate/SavedStateReader;->getSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .end local v3    # "$this$performRestore_u24lambda_u2415":Landroid/os/Bundle;
    .end local v4    # "$i$a$-read-SavedStateRegistryImpl$performRestore$3":I
    :cond_1
    nop

    .line 120
    .end local v1    # "$this$read$iv":Landroid/os/Bundle;
    .end local v2    # "$i$f$read":I
    :cond_2
    iput-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->restoredState:Landroid/os/Bundle;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isRestored:Z

    .line 125
    return-void

    .line 164
    :cond_3
    const/4 v0, 0x0

    .line 118
    .local v0, "$i$a$-check-SavedStateRegistryImpl$performRestore$2":I
    nop

    .end local v0    # "$i$a$-check-SavedStateRegistryImpl$performRestore$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SavedStateRegistry was already restored."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_4
    const/4 v0, 0x0

    .line 116
    .local v0, "$i$a$-check-SavedStateRegistryImpl$performRestore$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performRestore cannot be called when owner is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .end local v0    # "$i$a$-check-SavedStateRegistryImpl$performRestore$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final performSave$savedstate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "outBundle"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    const-string v0, "outBundle"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    nop

    .line 27
    nop

    .line 47
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 27
    .local v3, "initialState$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 32
    .local v4, "$i$f$savedState":I
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 33
    new-array v0, v5, [Lkotlin/Pair;

    goto :goto_1

    .line 35
    :cond_0
    move-object v0, v3

    .local v0, "$this$map$iv$iv":Ljava/util/Map;
    const/4 v6, 0x0

    .line 126
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .local v7, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v8, v0

    .local v8, "$this$mapTo$iv$iv$iv":Ljava/util/Map;
    const/4 v9, 0x0

    .line 153
    .local v9, "$i$f$mapTo":I
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 154
    .local v11, "item$iv$iv$iv":Ljava/util/Map$Entry;
    const/4 v12, 0x0

    .local v12, "$i$a$-map-SavedStateKt__SavedState_androidKt$savedState$pairs$1$iv":I
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "key$iv":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 35
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 154
    .end local v12    # "$i$a$-map-SavedStateKt__SavedState_androidKt$savedState$pairs$1$iv":I
    .end local v13    # "key$iv":Ljava/lang/String;
    .end local v14    # "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v11    # "item$iv$iv$iv":Ljava/util/Map$Entry;
    :cond_1
    nop

    .line 126
    .end local v7    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv$iv":Ljava/util/Map;
    .end local v9    # "$i$f$mapTo":I
    nop

    .line 35
    .end local v0    # "$this$map$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$map":I
    nop

    .local v7, "$this$toTypedArray$iv$iv":Ljava/util/Collection;
    const/4 v0, 0x0

    .line 37
    .local v0, "$i$f$toTypedArray":I
    move-object v6, v7

    .line 38
    .local v6, "thisCollection$iv$iv":Ljava/util/Collection;
    new-array v5, v5, [Lkotlin/Pair;

    invoke-interface {v6, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$toTypedArray$iv$iv":Ljava/util/Collection;
    check-cast v0, [Lkotlin/Pair;

    .line 32
    :goto_1
    nop

    .line 31
    move-object v5, v0

    .line 38
    .local v5, "pairs$iv":[Lkotlin/Pair;
    array-length v0, v5

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    move-object v6, v0

    .line 186
    .local v6, "$this$savedState_u24lambda_u241$iv":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 38
    .local v7, "$i$a$-apply-SavedStateKt__SavedState_androidKt$savedState$2$iv":I
    move-object v8, v6

    .local v8, "$this$write$iv$iv":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 106
    .local v9, "$i$f$write":I
    invoke-static {v8}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .local v10, "$this$performSave_u24lambda_u2418":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 136
    .local v11, "$i$a$-savedState$default-SavedStateRegistryImpl$performSave$inState$1":I
    iget-object v12, v1, Landroidx/savedstate/internal/SavedStateRegistryImpl;->restoredState:Landroid/os/Bundle;

    nop

    if-eqz v12, :cond_2

    .line 164
    .local v12, "it":Landroid/os/Bundle;
    const/4 v13, 0x0

    .line 136
    .local v13, "$i$a$-let-SavedStateRegistryImpl$performSave$inState$1$1":I
    invoke-static {v10, v12}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 137
    .end local v12    # "it":Landroid/os/Bundle;
    .end local v13    # "$i$a$-let-SavedStateRegistryImpl$performSave$inState$1$1":I
    :cond_2
    iget-object v12, v1, Landroidx/savedstate/internal/SavedStateRegistryImpl;->lock:Landroidx/savedstate/internal/SynchronizedObject;

    .local v12, "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    const/4 v13, 0x0

    .line 41
    .local v13, "$i$f$synchronized":I
    move-object v14, v12

    .local v14, "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    const/4 v15, 0x0

    .line 23
    .local v15, "$i$f$synchronizedImpl":I
    monitor-enter v14

    const/16 v16, 0x0

    .line 138
    .local v16, "$i$a$-synchronized-SavedStateRegistryImpl$performSave$inState$1$2":I
    :try_start_0
    invoke-static {v1}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->access$getKeyToProviders$p(Landroidx/savedstate/internal/SavedStateRegistryImpl;)Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v20, v19

    .local v20, "key":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 139
    .local v18, "provider":Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v18}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 v1, v20

    .end local v20    # "key":Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    invoke-static {v10, v1, v0}, Landroidx/savedstate/SavedStateWriter;->putSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v1, p0

    move-object/from16 v0, v19

    .end local v1    # "key":Ljava/lang/String;
    .end local v18    # "provider":Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    goto :goto_2

    .line 23
    .end local v16    # "$i$a$-synchronized-SavedStateRegistryImpl$performSave$inState$1$2":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 141
    .restart local v16    # "$i$a$-synchronized-SavedStateRegistryImpl$performSave$inState$1$2":I
    :cond_3
    move-object/from16 v19, v0

    .end local v16    # "$i$a$-synchronized-SavedStateRegistryImpl$performSave$inState$1$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v14

    .line 41
    .end local v14    # "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .end local v15    # "$i$f$synchronizedImpl":I
    nop

    .line 142
    .end local v12    # "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .end local v13    # "$i$f$synchronized":I
    nop

    .line 106
    .end local v10    # "$this$performSave_u24lambda_u2418":Landroid/os/Bundle;
    .end local v11    # "$i$a$-savedState$default-SavedStateRegistryImpl$performSave$inState$1":I
    nop

    .line 38
    .end local v8    # "$this$write$iv$iv":Landroid/os/Bundle;
    .end local v9    # "$i$f$write":I
    nop

    .line 135
    .end local v3    # "initialState$iv":Ljava/util/Map;
    .end local v4    # "$i$f$savedState":I
    .end local v5    # "pairs$iv":[Lkotlin/Pair;
    .end local v6    # "$this$savedState_u24lambda_u241$iv":Landroid/os/Bundle;
    .end local v7    # "$i$a$-apply-SavedStateKt__SavedState_androidKt$savedState$2$iv":I
    move-object/from16 v0, v19

    .line 144
    .local v0, "inState":Landroid/os/Bundle;
    move-object v1, v0

    .local v1, "$this$read$iv":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 90
    .local v3, "$i$f$read":I
    invoke-static {v1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .local v4, "$this$performSave_u24lambda_u2419":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 144
    .local v5, "$i$a$-read-SavedStateRegistryImpl$performSave$1":I
    invoke-static {v4}, Landroidx/savedstate/SavedStateReader;->isEmpty-impl(Landroid/os/Bundle;)Z

    move-result v6

    .line 90
    .end local v4    # "$this$performSave_u24lambda_u2419":Landroid/os/Bundle;
    .end local v5    # "$i$a$-read-SavedStateRegistryImpl$performSave$1":I
    nop

    .line 144
    .end local v1    # "$this$read$iv":Landroid/os/Bundle;
    .end local v3    # "$i$f$read":I
    if-nez v6, :cond_4

    .line 145
    move-object/from16 v1, p1

    .local v1, "$this$write$iv":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 106
    .local v3, "$i$f$write":I
    invoke-static {v1}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .local v4, "$this$performSave_u24lambda_u2420":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 145
    .local v5, "$i$a$-write-SavedStateRegistryImpl$performSave$2":I
    const-string v6, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-static {v4, v6, v0}, Landroidx/savedstate/SavedStateWriter;->putSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    .end local v4    # "$this$performSave_u24lambda_u2420":Landroid/os/Bundle;
    .end local v5    # "$i$a$-write-SavedStateRegistryImpl$performSave$2":I
    nop

    .line 147
    .end local v1    # "$this$write$iv":Landroid/os/Bundle;
    .end local v3    # "$i$f$write":I
    :cond_4
    return-void

    .line 23
    .end local v0    # "inState":Landroid/os/Bundle;
    .local v3, "initialState$iv":Ljava/util/Map;
    .local v4, "$i$f$savedState":I
    .local v5, "pairs$iv":[Lkotlin/Pair;
    .restart local v6    # "$this$savedState_u24lambda_u241$iv":Landroid/os/Bundle;
    .restart local v7    # "$i$a$-apply-SavedStateKt__SavedState_androidKt$savedState$2$iv":I
    .restart local v8    # "$this$write$iv$iv":Landroid/os/Bundle;
    .restart local v9    # "$i$f$write":I
    .restart local v10    # "$this$performSave_u24lambda_u2418":Landroid/os/Bundle;
    .restart local v11    # "$i$a$-savedState$default-SavedStateRegistryImpl$performSave$inState$1":I
    .restart local v12    # "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .restart local v13    # "$i$f$synchronized":I
    .restart local v14    # "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .restart local v15    # "$i$f$synchronizedImpl":I
    :goto_3
    monitor-exit v14

    throw v0
.end method

.method public final registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "provider"    # Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->lock:Landroidx/savedstate/internal/SynchronizedObject;

    .local v0, "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    const/4 v1, 0x0

    .line 41
    .local v1, "$i$f$synchronized":I
    move-object v2, v0

    .local v2, "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    const/4 v3, 0x0

    .line 23
    .local v3, "$i$f$synchronizedImpl":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 67
    .local v4, "$i$a$-synchronized-SavedStateRegistryImpl$registerSavedStateProvider$1":I
    :try_start_0
    invoke-static {p0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->access$getKeyToProviders$p(Landroidx/savedstate/internal/SavedStateRegistryImpl;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 70
    invoke-static {p0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->access$getKeyToProviders$p(Landroidx/savedstate/internal/SavedStateRegistryImpl;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    nop

    .end local v4    # "$i$a$-synchronized-SavedStateRegistryImpl$registerSavedStateProvider$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v2

    .line 41
    .end local v2    # "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .end local v3    # "$i$f$synchronizedImpl":I
    nop

    .line 72
    .end local v0    # "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 23
    .restart local v0    # "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .restart local v3    # "$i$f$synchronizedImpl":I
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 67
    .restart local v4    # "$i$a$-synchronized-SavedStateRegistryImpl$registerSavedStateProvider$1":I
    :cond_0
    const/4 v5, 0x0

    .line 68
    .local v5, "$i$a$-require-SavedStateRegistryImpl$registerSavedStateProvider$1$1":I
    :try_start_1
    const-string v6, "SavedStateProvider with the given key is already registered"

    .line 67
    .end local v5    # "$i$a$-require-SavedStateRegistryImpl$registerSavedStateProvider$1$1":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .end local v3    # "$i$f$synchronizedImpl":I
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "provider":Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .end local v4    # "$i$a$-synchronized-SavedStateRegistryImpl$registerSavedStateProvider$1":I
    .restart local v0    # "lock$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "lock$iv$iv":Landroidx/savedstate/internal/SynchronizedObject;
    .restart local v3    # "$i$f$synchronizedImpl":I
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "provider":Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    :goto_0
    monitor-exit v2

    throw v4
.end method
