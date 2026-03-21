.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field public mCacheSpanIndices:Z

.field public final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method public getCachedSpanIndex(II)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 873
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0

    .line 876
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 877
    .local v0, "existing":I
    if-eq v0, v1, :cond_1

    .line 878
    return v0

    .line 880
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 881
    .local v1, "value":I
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 882
    return v1
.end method

.method public getSpanGroupIndex(II)I
    .locals 5
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, "span":I
    const/4 v1, 0x0

    .line 972
    .local v1, "group":I
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    .line 973
    .local v2, "positionSpanSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_2

    .line 974
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 975
    .local v4, "size":I
    add-int/2addr v0, v4

    .line 976
    if-ne v0, p2, :cond_0

    .line 977
    const/4 v0, 0x0

    .line 978
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 979
    :cond_0
    if-le v0, p2, :cond_1

    .line 981
    move v0, v4

    .line 982
    add-int/lit8 v1, v1, 0x1

    .line 973
    .end local v4    # "size":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 985
    .end local v3    # "i":I
    add-int v3, v0, v2

    if-le v3, p2, :cond_3

    .line 986
    add-int/lit8 v1, v1, 0x1

    .line 988
    :cond_3
    return v1
.end method

.method public abstract getSpanIndex(II)I
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .line 860
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 861
    return-void
.end method
