.class public final Lkotlin/enums/EnumEntriesList;
.super Lkotlin/collections/AbstractList;
.source "EnumEntries.kt"

# interfaces
.implements Lkotlin/enums/EnumEntries;
.implements Ljava/io/Serializable;


# instance fields
.field public final entries:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>([Ljava/lang/Enum;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/Enum;

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    .line 49
    iput-object p1, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Enum;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Enum;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    nop

    .line 70
    iget-object v0, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 71
    .local v0, "target":Ljava/lang/Enum;
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Lkotlin/enums/EnumEntriesList;->contains(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Enum;
    .locals 2
    .param p1, "index"    # I

    .line 59
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget-object v1, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    array-length v1, v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 60
    iget-object v0, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 48
    invoke-virtual {p0, p1}, Lkotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 56
    iget-object v0, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    array-length v0, v0

    return v0
.end method

.method public indexOf(Ljava/lang/Enum;)I
    .locals 3
    .param p1, "element"    # Ljava/lang/Enum;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    nop

    .line 78
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 79
    .local v0, "ordinal":I
    iget-object v1, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 80
    .local v1, "target":Ljava/lang/Enum;
    if-ne v1, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Lkotlin/enums/EnumEntriesList;->indexOf(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Enum;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Enum;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lkotlin/enums/EnumEntriesList;->indexOf(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Lkotlin/enums/EnumEntriesList;->lastIndexOf(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method
