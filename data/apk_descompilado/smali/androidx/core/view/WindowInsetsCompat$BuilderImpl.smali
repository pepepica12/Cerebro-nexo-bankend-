.class public abstract Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderImpl"
.end annotation


# instance fields
.field public final mInsets:Landroidx/core/view/WindowInsetsCompat;

.field public mInsetsTypeMask:[Landroidx/core/graphics/Insets;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1623
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1624
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 1626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 1628
    return-void
.end method


# virtual methods
.method public final applyInsetTypes()V
    .locals 5

    .line 1672
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    if-eqz v0, :cond_4

    .line 1673
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aget-object v0, v0, v2

    .line 1674
    .local v0, "statusBars":Landroidx/core/graphics/Insets;
    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v2, v2, v4

    .line 1678
    .local v2, "navigationBars":Landroidx/core/graphics/Insets;
    if-nez v2, :cond_0

    .line 1679
    iget-object v4, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v4, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    .line 1681
    :cond_0
    if-nez v0, :cond_1

    .line 1682
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v3, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 1685
    :cond_1
    invoke-static {v0, v2}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    .line 1687
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v3, 0x10

    invoke-static {v3}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v3

    aget-object v1, v1, v3

    .line 1688
    .local v1, "i":Landroidx/core/graphics/Insets;
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Landroidx/core/graphics/Insets;)V

    .line 1690
    :cond_2
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v4, 0x20

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v1, v3, v4

    .line 1691
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V

    .line 1693
    :cond_3
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v4, 0x40

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v1, v3, v4

    .line 1694
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Landroidx/core/graphics/Insets;)V

    .line 1696
    .end local v0    # "statusBars":Landroidx/core/graphics/Insets;
    .end local v1    # "i":Landroidx/core/graphics/Insets;
    .end local v2    # "navigationBars":Landroidx/core/graphics/Insets;
    :cond_4
    return-void
.end method

.method public abstract build()Landroidx/core/view/WindowInsetsCompat;
.end method

.method public setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1634
    return-void
.end method

.method public abstract setStableInsets(Landroidx/core/graphics/Insets;)V
.end method

.method public setSystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1632
    return-void
.end method

.method public abstract setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
.end method

.method public setTappableElementInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1636
    return-void
.end method
