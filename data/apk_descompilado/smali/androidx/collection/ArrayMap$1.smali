.class public Landroidx/collection/ArrayMap$1;
.super Landroidx/collection/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/ArrayMap;->getCollection()Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/collection/ArrayMap;

    .line 76
    .local p0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    iput-object p1, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Landroidx/collection/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method public colClear()V
    .locals 1

    .line 119
    .local p0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 120
    return-void
.end method

.method public colGetEntry(II)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .line 84
    .local p0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    iget-object v0, v0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public colGetMap()Ljava/util/Map;
    .locals 1

    .line 99
    .local p0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public colGetSize()I
    .locals 1

    .line 79
    .local p0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    iget v0, v0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public colIndexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 89
    .local p0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public colIndexOfValue(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 94
    .local p0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 104
    .local p0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public colRemoveAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 114
    .local p0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 109
    .local p0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
