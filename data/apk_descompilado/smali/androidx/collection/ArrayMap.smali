.class public Landroidx/collection/ArrayMap;
.super Landroidx/collection/SimpleArrayMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public mCollections:Landroidx/collection/MapCollections;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    .local p0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroidx/collection/SimpleArrayMap;)V
    .locals 0
    .param p1, "map"    # Landroidx/collection/SimpleArrayMap;

    .line 71
    .local p0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 72
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 182
    .local p0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->getCollection()Landroidx/collection/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getCollection()Landroidx/collection/MapCollections;
    .locals 1

    .line 75
    .local p0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/MapCollections;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroidx/collection/ArrayMap$1;

    invoke-direct {v0, p0}, Landroidx/collection/ArrayMap$1;-><init>(Landroidx/collection/ArrayMap;)V

    iput-object v0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/MapCollections;

    .line 123
    :cond_0
    iget-object v0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/MapCollections;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 194
    .local p0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->getCollection()Landroidx/collection/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4

    .line 142
    .local p0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->ensureCapacity(I)V

    .line 143
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .line 164
    .local p0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroidx/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 206
    .local p0, "this":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->getCollection()Landroidx/collection/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
