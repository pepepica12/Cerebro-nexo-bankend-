.class public abstract Lkotlin/collections/ArraysKt___ArraysJvmKt;
.super Lkotlin/collections/ArraysKt__ArraysKt;
.source "_ArraysJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_ArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,3051:1\n14484#2,14:3052\n14514#2,14:3066\n14544#2,14:3080\n14574#2,14:3094\n14604#2,14:3108\n14634#2,14:3122\n14664#2,14:3136\n14694#2,14:3150\n14724#2,14:3164\n17456#2,14:3178\n17486#2,14:3192\n17516#2,14:3206\n17546#2,14:3220\n17576#2,14:3234\n17606#2,14:3248\n17636#2,14:3262\n17666#2,14:3276\n17696#2,14:3290\n*S KotlinDebug\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt\n*L\n2443#1:3052,14\n2450#1:3066,14\n2457#1:3080,14\n2464#1:3094,14\n2471#1:3108,14\n2478#1:3122,14\n2485#1:3136,14\n2492#1:3150,14\n2499#1:3164,14\n2641#1:3178,14\n2648#1:3192,14\n2655#1:3206,14\n2662#1:3220,14\n2669#1:3234,14\n2676#1:3248,14\n2683#1:3262,14\n2690#1:3276,14\n2697#1:3290,14\n*E\n"
.end annotation


# direct methods
.method public static final asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "$this$asList"    # [Ljava/lang/Object;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lkotlin/collections/ArraysUtilJVM;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "asList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
