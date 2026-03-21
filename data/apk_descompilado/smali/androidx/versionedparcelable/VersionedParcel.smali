.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;
.source "VersionedParcel.java"


# instance fields
.field public final mParcelizerCache:Landroidx/collection/ArrayMap;

.field public final mReadCache:Landroidx/collection/ArrayMap;

.field public final mWriteCache:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 86
    .local p1, "readCache":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p2, "writeCache":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p3, "parcelizerCache":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/Class;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    .line 88
    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    .line 89
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    .line 90
    return-void
.end method


# virtual methods
.method public abstract closeField()V
.end method

.method public abstract createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method public final findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5

    .line 1628
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/versionedparcelable/VersionedParcelable;>;"
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1629
    .local v0, "ret":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 1630
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1631
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s.%sParcelizer"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1632
    .local v2, "c":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1633
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "c":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "parcelCls"    # Ljava/lang/String;

    .line 1604
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1605
    .local v0, "m":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 1606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1607
    .local v1, "start":J
    const/4 v3, 0x1

    const-class v4, Landroidx/versionedparcelable/VersionedParcel;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {p1, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1608
    .local v3, "cls":Ljava/lang/Class;
    const-string v5, "read"

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1609
    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    .end local v1    # "start":J
    .end local v3    # "cls":Ljava/lang/Class;
    :cond_0
    return-object v0
.end method

.method public final getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "baseCls"    # Ljava/lang/Class;

    .line 1616
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1617
    .local v0, "m":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 1618
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 1619
    .local v1, "cls":Ljava/lang/Class;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1620
    .local v2, "start":J
    const-class v4, Landroidx/versionedparcelable/VersionedParcel;

    filled-new-array {p1, v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "write"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1621
    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "start":J
    :cond_0
    return-object v0
.end method

.method public isStream()Z
    .locals 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public abstract readBoolean()Z
.end method

.method public readBoolean(ZI)Z
    .locals 1
    .param p1, "def"    # Z
    .param p2, "fieldId"    # I

    .line 399
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    return p1

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public abstract readByteArray()[B
.end method

.method public readByteArray([BI)[B
    .locals 1
    .param p1, "def"    # [B
    .param p2, "fieldId"    # I

    .line 472
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    return-object p1

    .line 475
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public abstract readCharSequence()Ljava/lang/CharSequence;
.end method

.method public readCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "def"    # Ljava/lang/CharSequence;
    .param p2, "fieldId"    # I

    .line 616
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    return-object p1

    .line 619
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public abstract readField(I)Z
.end method

.method public readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 3
    .param p1, "parcelCls"    # Ljava/lang/String;
    .param p2, "versionedParcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 1565
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1566
    .local v0, "m":Ljava/lang/reflect/Method;
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/VersionedParcelable;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1576
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1574
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1569
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1567
    :catch_3
    move-exception v0

    goto :goto_3

    .line 1576
    :goto_0
    nop

    .line 1577
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1574
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    nop

    .line 1575
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1569
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    nop

    .line 1570
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 1571
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 1573
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1567
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_3
    nop

    .line 1568
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract readInt()I
.end method

.method public readInt(II)I
    .locals 1
    .param p1, "def"    # I
    .param p2, "fieldId"    # I

    .line 409
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    return p1

    .line 412
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    return v0
.end method

.method public abstract readParcelable()Landroid/os/Parcelable;
.end method

.method public readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .locals 1
    .param p2, "fieldId"    # I

    .line 481
    .local p1, "def":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    return-object p1

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public abstract readString()Ljava/lang/String;
.end method

.method public readString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "def"    # Ljava/lang/String;
    .param p2, "fieldId"    # I

    .line 451
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    return-object p1

    .line 454
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;
    .locals 2

    .line 1509
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1510
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1511
    const/4 v1, 0x0

    return-object v1

    .line 1513
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    return-object v1
.end method

.method public readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 1
    .param p2, "fieldId"    # I

    .line 1493
    .local p1, "def":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    return-object p1

    .line 1496
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    return-object v0
.end method

.method public abstract setOutputField(I)V
.end method

.method public setSerializationFlags(ZZ)V
    .locals 0
    .param p1, "allowSerialization"    # Z
    .param p2, "ignoreParcelables"    # Z

    .line 269
    return-void
.end method

.method public abstract writeBoolean(Z)V
.end method

.method public writeBoolean(ZI)V
    .locals 0
    .param p1, "val"    # Z
    .param p2, "fieldId"    # I

    .line 294
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 295
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 296
    return-void
.end method

.method public abstract writeByteArray([B)V
.end method

.method public writeByteArray([BI)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "fieldId"    # I

    .line 304
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 305
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V

    .line 306
    return-void
.end method

.method public abstract writeCharSequence(Ljava/lang/CharSequence;)V
.end method

.method public writeCharSequence(Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "val"    # Ljava/lang/CharSequence;
    .param p2, "fieldId"    # I

    .line 325
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 326
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method

.method public abstract writeInt(I)V
.end method

.method public writeInt(II)V
    .locals 0
    .param p1, "val"    # I
    .param p2, "fieldId"    # I

    .line 334
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 335
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 336
    return-void
.end method

.method public abstract writeParcelable(Landroid/os/Parcelable;)V
.end method

.method public writeParcelable(Landroid/os/Parcelable;I)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "fieldId"    # I

    .line 391
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 392
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 393
    return-void
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

.method public writeString(Ljava/lang/String;I)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "fieldId"    # I

    .line 370
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 371
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 3
    .param p2, "versionedParcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 1586
    .local p1, "val":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1587
    .local v0, "m":Ljava/lang/reflect/Method;
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    nop

    .line 1600
    .end local v0    # "m":Ljava/lang/reflect/Method;
    return-void

    .line 1597
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1595
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1590
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1588
    :catch_3
    move-exception v0

    goto :goto_3

    .line 1597
    :goto_0
    nop

    .line 1598
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1595
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    nop

    .line 1596
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1590
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    nop

    .line 1591
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 1592
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 1594
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1588
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_3
    nop

    .line 1589
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 1
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;

    .line 1028
    if-nez p1, :cond_0

    .line 1029
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1030
    return-void

    .line 1032
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 1034
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v0

    .line 1035
    .local v0, "subParcel":Landroidx/versionedparcelable/VersionedParcel;
    invoke-virtual {p0, p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V

    .line 1036
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->closeField()V

    .line 1037
    return-void
.end method

.method public writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V
    .locals 0
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;
    .param p2, "fieldId"    # I

    .line 1021
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 1022
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 1023
    return-void
.end method

.method public final writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 5
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;

    .line 1040
    const/4 v0, 0x0

    .line 1042
    .local v0, "name":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    .end local v0    # "name":Ljava/lang/Class;
    .local v1, "name":Ljava/lang/Class;
    nop

    .line 1047
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1048
    return-void

    .line 1043
    .end local v1    # "name":Ljava/lang/Class;
    .restart local v0    # "name":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 1044
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not have a Parcelizer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
