.class public abstract Lkotlin/jvm/JvmClassMappingKt;
.super Ljava/lang/Object;
.source "JvmClassMapping.kt"


# direct methods
.method public static final getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 2
    .param p0, "$this$java"    # Lkotlin/reflect/KClass;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 4
    .param p0, "$this$javaObjectType"    # Lkotlin/reflect/KClass;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "thisJClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const-string v2, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>"

    if-nez v1, :cond_0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "short"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    const-class v1, Ljava/lang/Short;

    goto/16 :goto_2

    .line 62
    :sswitch_1
    const-string v3, "float"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    const-class v1, Ljava/lang/Float;

    goto :goto_2

    .line 62
    :sswitch_2
    const-string v3, "boolean"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 63
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    goto :goto_2

    .line 62
    :sswitch_3
    const-string v3, "void"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 71
    :cond_4
    const-class v1, Ljava/lang/Void;

    goto :goto_2

    .line 62
    :sswitch_4
    const-string v3, "long"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 69
    :cond_5
    const-class v1, Ljava/lang/Long;

    goto :goto_2

    .line 62
    :sswitch_5
    const-string v3, "char"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 64
    :cond_6
    const-class v1, Ljava/lang/Character;

    goto :goto_2

    .line 62
    :sswitch_6
    const-string v3, "byte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    .line 65
    :cond_7
    const-class v1, Ljava/lang/Byte;

    goto :goto_2

    .line 62
    :sswitch_7
    const-string v3, "int"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    .line 67
    :cond_8
    const-class v1, Ljava/lang/Integer;

    goto :goto_2

    .line 62
    :sswitch_8
    const-string v3, "double"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    .line 72
    :goto_1
    move-object v1, v0

    goto :goto_2

    .line 70
    :cond_9
    const-class v1, Ljava/lang/Double;

    .line 62
    :goto_2
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1
    .param p0, "$this$kotlin"    # Ljava/lang/Class;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method
