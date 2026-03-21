.class public final Landroidx/savedstate/SavedStateRegistryController;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/SavedStateRegistryController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;


# instance fields
.field public final impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

.field public final savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/savedstate/SavedStateRegistryController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/savedstate/SavedStateRegistryController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/savedstate/SavedStateRegistryController;->Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V
    .locals 2
    .param p1, "impl"    # Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistryController;->impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 24
    new-instance v0, Landroidx/savedstate/SavedStateRegistry;

    iget-object v1, p0, Landroidx/savedstate/SavedStateRegistryController;->impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    invoke-direct {v0, v1}, Landroidx/savedstate/SavedStateRegistry;-><init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V

    iput-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 22
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/savedstate/SavedStateRegistryController;-><init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V

    return-void
.end method

.method public static final create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;
    .locals 1
    .param p0, "owner"    # Landroidx/savedstate/SavedStateRegistryOwner;

    sget-object v0, Landroidx/savedstate/SavedStateRegistryController;->Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;

    invoke-virtual {v0, p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object v0

    .line 51
    return-object v0
.end method


# virtual methods
.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    .line 24
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    return-object v0
.end method

.method public final performAttach()V
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    invoke-virtual {v0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performAttach()V

    .line 29
    return-void
.end method

.method public final performRestore(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 33
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    invoke-virtual {v0, p1}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performRestore$savedstate(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method public final performSave(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outBundle"    # Landroid/os/Bundle;

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    invoke-virtual {v0, p1}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performSave$savedstate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method
