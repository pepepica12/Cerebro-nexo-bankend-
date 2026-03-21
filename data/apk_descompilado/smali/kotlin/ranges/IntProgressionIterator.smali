.class public final Lkotlin/ranges/IntProgressionIterator;
.super Lkotlin/collections/IntIterator;
.source "ProgressionIterators.kt"


# instance fields
.field public final finalElement:I

.field public hasNext:Z

.field public next:I

.field public final step:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "step"    # I

    .line 40
    invoke-direct {p0}, Lkotlin/collections/IntIterator;-><init>()V

    iput p3, p0, Lkotlin/ranges/IntProgressionIterator;->step:I

    .line 41
    iput p2, p0, Lkotlin/ranges/IntProgressionIterator;->finalElement:I

    .line 42
    iget v0, p0, Lkotlin/ranges/IntProgressionIterator;->step:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    if-gt p1, p2, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 43
    iget-boolean v0, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v0, :cond_2

    move v0, p1

    goto :goto_2

    :cond_2
    iget v0, p0, Lkotlin/ranges/IntProgressionIterator;->finalElement:I

    :goto_2
    iput v0, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    .line 40
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    return v0
.end method

.method public nextInt()I
    .locals 3

    .line 48
    iget v0, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    .line 49
    .local v0, "value":I
    iget v1, p0, Lkotlin/ranges/IntProgressionIterator;->finalElement:I

    if-ne v0, v1, :cond_1

    .line 50
    iget-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 54
    :cond_1
    iget v1, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    iget v2, p0, Lkotlin/ranges/IntProgressionIterator;->step:I

    add-int/2addr v1, v2

    iput v1, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    .line 56
    :goto_0
    return v0
.end method
