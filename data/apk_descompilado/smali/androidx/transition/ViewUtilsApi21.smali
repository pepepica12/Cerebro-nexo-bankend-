.class public abstract Landroidx/transition/ViewUtilsApi21;
.super Landroidx/transition/ViewUtilsApi19;
.source "ViewUtilsApi21.java"


# static fields
.field public static sTryHiddenSetAnimationMatrix:Z

.field public static sTryHiddenTransformMatrixToGlobal:Z

.field public static sTryHiddenTransformMatrixToLocal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenSetAnimationMatrix:Z

    .line 37
    sput-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToGlobal:Z

    .line 41
    sput-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToLocal:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi19;-><init>()V

    return-void
.end method


# virtual methods
.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 46
    sget-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToGlobal:Z

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToGlobal:Z

    .line 55
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    :goto_0
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 60
    sget-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToLocal:Z

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi21$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToLocal:Z

    .line 69
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    :goto_0
    return-void
.end method
