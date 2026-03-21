.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;,
        Landroidx/lifecycle/ReportFragment$Companion;,
        Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/lifecycle/ReportFragment$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/lifecycle/ReportFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/ReportFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/ReportFragment;->Companion:Landroidx/lifecycle/ReportFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 28
    return-void
.end method

.method public static final injectIfNeededIn(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    sget-object v0, Landroidx/lifecycle/ReportFragment;->Companion:Landroidx/lifecycle/ReportFragment$Companion;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ReportFragment$Companion;->injectIfNeededIn(Landroid/app/Activity;)V

    .line 170
    return-void
.end method


# virtual methods
.method public final dispatch(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 83
    sget-object v0, Landroidx/lifecycle/ReportFragment;->Companion:Landroidx/lifecycle/ReportFragment$Companion;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/ReportFragment$Companion;->dispatch$lifecycle_runtime(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 85
    :cond_0
    return-void
.end method

.method public final dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 32
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    .line 33
    :cond_0
    return-void
.end method

.method public final dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 40
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    .line 41
    :cond_0
    return-void
.end method

.method public final dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 36
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    .line 37
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 46
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 73
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 75
    nop

    .line 76
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 63
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 58
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 59
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 52
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 53
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 68
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 69
    return-void
.end method
