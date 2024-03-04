.class public final Lv6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/protobuf/FieldMask;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->getPathsCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->getPathsList()Lcom/google/protobuf/i2;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/google/common/base/CaseFormat;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    sget-object v3, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    invoke-virtual {v2, v3, v1}, Lcom/google/common/base/CaseFormat;->to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, ","

    .line 5
    invoke-static {p0}, Lcom/google/common/base/i;->h(Ljava/lang/String;)Lcom/google/common/base/i;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/common/base/i;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
