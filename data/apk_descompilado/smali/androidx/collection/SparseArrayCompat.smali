.class public Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DELETED:Ljava/lang/Object;


# instance fields
.field public mGarbage:Z

.field public mKeys:[I

.field public mSize:I

.field public mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 72
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 73
    if-nez p1, :cond_0

    .line 74
    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 75
    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p1}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result p1

    .line 78
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 79
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 81
    :goto_0
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # I

    .line 460
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    .line 461
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 462
    return-void

    .line 465
    :cond_0
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 466
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 469
    :cond_1
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 470
    .local v0, "pos":I
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 471
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 473
    .local v1, "n":I
    new-array v2, v1, [I

    .line 474
    .local v2, "nkeys":[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 477
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget-object v5, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    iget-object v4, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 481
    iput-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 484
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 485
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 486
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 487
    return-void
.end method

.method public clear()V
    .locals 4

    .line 444
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 445
    .local v0, "n":I
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 447
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 448
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 451
    .end local v2    # "i":I
    const/4 v2, 0x0

    iput v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 452
    iput-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 453
    return-void
.end method

.method public clone()Landroidx/collection/SparseArrayCompat;
    .locals 2

    .line 88
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 89
    .local v0, "clone":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 90
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 94
    return-object v0

    .line 91
    .end local v0    # "clone":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 50
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    return-object v0
.end method

.method public final gc()V
    .locals 7

    .line 230
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 231
    .local v0, "n":I
    const/4 v1, 0x0

    .line 232
    .local v1, "o":I
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 233
    .local v2, "keys":[I
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 235
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 236
    aget-object v5, v3, v4

    .line 238
    .local v5, "val":Ljava/lang/Object;
    sget-object v6, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    .line 239
    if-eq v4, v1, :cond_0

    .line 240
    aget v6, v2, v4

    aput v6, v2, v1

    .line 241
    aput-object v5, v3, v1

    .line 242
    const/4 v6, 0x0

    aput-object v6, v3, v4

    .line 245
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 235
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 249
    .end local v4    # "i":I
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 250
    iput v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 253
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .line 109
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .line 118
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 120
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 121
    :goto_0
    return-object p2
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 361
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 365
    :cond_0
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # I

    .line 261
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 263
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 264
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto/16 :goto_0

    .line 266
    :cond_0
    not-int v0, v0

    .line 268
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 269
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 270
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 271
    return-void

    .line 274
    :cond_1
    iget-boolean v1, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 275
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 278
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    invoke-static {v1, v2, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v1

    not-int v0, v1

    .line 281
    :cond_2
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 282
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 284
    .local v1, "n":I
    new-array v2, v1, [I

    .line 285
    .local v2, "nkeys":[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 288
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget-object v5, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget-object v4, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 292
    iput-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 295
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 297
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    :cond_4
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 302
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 303
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 305
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 340
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 344
    :cond_0
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 498
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 499
    const-string v0, "{}"

    return-object v0

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 503
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v1, v2, :cond_3

    .line 505
    if-lez v1, :cond_1

    .line 506
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    .line 509
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 512
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    .line 513
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 515
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 518
    .end local v1    # "i":I
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 375
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 379
    :cond_0
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
