.class public abstract Lkotlin/collections/AbstractList;
.super Lkotlin/collections/AbstractCollection;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/AbstractList$Companion;,
        Lkotlin/collections/AbstractList$IteratorImpl;,
        Lkotlin/collections/AbstractList$ListIteratorImpl;,
        Lkotlin/collections/AbstractList$SubList;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractList.kt\nkotlin/collections/AbstractList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n360#2,7:182\n388#2,7:189\n*S KotlinDebug\n*F\n+ 1 AbstractList.kt\nkotlin/collections/AbstractList\n*L\n27#1:182,7\n29#1:189,7\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/collections/AbstractList$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lkotlin/collections/AbstractList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/AbstractList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lkotlin/collections/AbstractCollection;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 70
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_1
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, p0, v1}, Lkotlin/collections/AbstractList$Companion;->orderedEquals$kotlin_stdlib(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public hashCode()I
    .locals 1

    .line 79
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {v0, p0}, Lkotlin/collections/AbstractList$Companion;->orderedHashCode$kotlin_stdlib(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 7
    .param p1, "element"    # Ljava/lang/Object;

    .line 27
    move-object v0, p0

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 360
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 361
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 362
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 27
    .local v6, "$i$a$-indexOfFirst-AbstractList$indexOf$1":I
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 362
    .end local v5    # "it":Ljava/lang/Object;
    .end local v6    # "$i$a$-indexOfFirst-AbstractList$indexOf$1":I
    if-eqz v5, :cond_0

    .line 363
    goto :goto_1

    .line 364
    :cond_0
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_1
    const/4 v3, -0x1

    move v2, v3

    .line 27
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_1
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 25
    new-instance v0, Lkotlin/collections/AbstractList$IteratorImpl;

    invoke-direct {v0, p0}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;

    .line 29
    move-object v0, p0

    .local v0, "$this$indexOfLast$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 388
    .local v1, "$i$f$indexOfLast":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 389
    .local v2, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 29
    .local v4, "$i$a$-indexOfLast-AbstractList$lastIndexOf$1":I
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 390
    .end local v3    # "it":Ljava/lang/Object;
    .end local v4    # "$i$a$-indexOfLast-AbstractList$lastIndexOf$1":I
    if-eqz v3, :cond_0

    .line 391
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    goto :goto_0

    .line 394
    :cond_1
    const/4 v3, -0x1

    .line 29
    .end local v0    # "$this$indexOfLast$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfLast":I
    .end local v2    # "iterator$iv":Ljava/util/ListIterator;
    :goto_0
    return v3
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2

    .line 31
    new-instance v0, Lkotlin/collections/AbstractList$ListIteratorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/collections/AbstractList$ListIteratorImpl;-><init>(Lkotlin/collections/AbstractList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I

    .line 33
    new-instance v0, Lkotlin/collections/AbstractList$ListIteratorImpl;

    invoke-direct {v0, p0, p1}, Lkotlin/collections/AbstractList$ListIteratorImpl;-><init>(Lkotlin/collections/AbstractList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 35
    new-instance v0, Lkotlin/collections/AbstractList$SubList;

    invoke-direct {v0, p0, p1, p2}, Lkotlin/collections/AbstractList$SubList;-><init>(Lkotlin/collections/AbstractList;II)V

    return-object v0
.end method
