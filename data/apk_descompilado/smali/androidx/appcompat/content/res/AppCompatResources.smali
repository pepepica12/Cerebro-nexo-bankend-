.class public abstract Landroidx/appcompat/content/res/AppCompatResources;
.super Ljava/lang/Object;
.source "AppCompatResources.java"


# static fields
.field public static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

.field public static final sColorStateCacheLock:Ljava/lang/Object;

.field public static final sColorStateCaches:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/appcompat/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Landroidx/appcompat/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 67
    nop

    .line 69
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 104
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
