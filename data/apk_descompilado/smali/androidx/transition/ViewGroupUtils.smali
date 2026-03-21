.class public abstract Landroidx/transition/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field public static sTryHiddenSuppressLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    return-void
.end method

.method public static getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;
    .locals 1
    .param p0, "group"    # Landroid/view/ViewGroup;

    .line 46
    nop

    .line 47
    new-instance v0, Landroidx/transition/ViewGroupOverlayApi18;

    invoke-direct {v0, p0}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public static hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "suppress"    # Z

    .line 68
    sget-boolean v0, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-static {p0, p1}, Landroidx/transition/ViewGroupUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    .line 77
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    :goto_0
    return-void
.end method

.method public static suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "suppress"    # Z

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 57
    invoke-static {p0, p1}, Landroidx/transition/ViewGroupUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 58
    :cond_0
    nop

    .line 59
    invoke-static {p0, p1}, Landroidx/transition/ViewGroupUtils;->hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V

    .line 63
    :goto_0
    return-void
.end method
