.class public Lcom/google/api/client/http/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/util/w;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/http/l;

    const-string v1, "application/x-www-form-urlencoded"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/l;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/l;->k(Ljava/nio/charset/Charset;)Lcom/google/api/client/http/l;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/api/client/http/l;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/y;->a:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/io/Reader;Ljava/lang/Object;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/api/client/util/h;->e(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 3
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 4
    const-class v6, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/google/api/client/util/GenericData;

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 5
    :goto_0
    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object v1, v7

    .line 6
    :goto_1
    new-instance v8, Lcom/google/api/client/util/b;

    invoke-direct {v8, v0}, Lcom/google/api/client/util/b;-><init>(Ljava/lang/Object;)V

    .line 7
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 8
    new-instance v10, Ljava/io/StringWriter;

    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    :cond_2
    const/4 v11, 0x1

    .line 9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/Reader;->read()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    const/16 v14, 0x26

    if-eq v12, v14, :cond_6

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_4

    if-eqz v11, :cond_3

    .line 10
    invoke-virtual {v9, v12}, Ljava/io/StringWriter;->write(I)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v10, v12}, Ljava/io/StringWriter;->write(I)V

    goto :goto_2

    :cond_4
    if-eqz v11, :cond_5

    const/4 v11, 0x0

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {v10, v12}, Ljava/io/StringWriter;->write(I)V

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 13
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lj5/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_7
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 14
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_10

    if-eqz p2, :cond_8

    .line 15
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lj5/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 16
    :cond_8
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    .line 17
    :goto_4
    invoke-virtual {v2, v9}, Lcom/google/api/client/util/h;->b(Ljava/lang/String;)Lcom/google/api/client/util/m;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 18
    invoke-virtual {v11}, Lcom/google/api/client/util/m;->d()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/google/api/client/util/j;->k(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 19
    invoke-static {v9}, Lcom/google/api/client/util/g0;->j(Ljava/lang/reflect/Type;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 20
    invoke-static {v9}, Lcom/google/api/client/util/g0;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/google/api/client/util/g0;->f(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    .line 21
    invoke-virtual {v11}, Lcom/google/api/client/util/m;->b()Ljava/lang/reflect/Field;

    move-result-object v11

    .line 22
    invoke-static {v9, v4, v10}, Lcom/google/api/client/http/y;->e(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 23
    invoke-virtual {v8, v11, v9, v10}, Lcom/google/api/client/util/b;->a(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_7

    .line 24
    :cond_9
    invoke-static {v4, v9}, Lcom/google/api/client/util/g0;->f(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/lang/Iterable;

    .line 25
    invoke-static {v14, v15}, Lcom/google/api/client/util/g0;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 26
    invoke-virtual {v11, v0}, Lcom/google/api/client/util/m;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    if-nez v14, :cond_a

    .line 27
    invoke-static {v9}, Lcom/google/api/client/util/j;->g(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v14

    .line 28
    invoke-virtual {v11, v0, v14}, Lcom/google/api/client/util/m;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :cond_a
    const-class v11, Ljava/lang/Object;

    if-ne v9, v11, :cond_b

    move-object v9, v7

    goto :goto_5

    :cond_b
    invoke-static {v9}, Lcom/google/api/client/util/g0;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 30
    :goto_5
    invoke-static {v9, v4, v10}, Lcom/google/api/client/http/y;->e(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 31
    :cond_c
    invoke-static {v9, v4, v10}, Lcom/google/api/client/http/y;->e(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v11, v0, v9}, Lcom/google/api/client/util/m;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_10

    .line 32
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_f

    .line 33
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_e

    .line 34
    invoke-virtual {v6, v9, v11}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    goto :goto_6

    .line 35
    :cond_e
    invoke-interface {v1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_f
    :goto_6
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_10
    :goto_7
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 38
    new-instance v10, Ljava/io/StringWriter;

    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    if-ne v12, v13, :cond_2

    .line 39
    invoke-virtual {v8}, Lcom/google/api/client/util/b;->b()V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/api/client/http/y;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/google/api/client/http/y;->b(Ljava/io/Reader;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lcom/google/api/client/util/f0;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static e(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p0}, Lcom/google/api/client/util/j;->k(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    invoke-static {p0, p2}, Lcom/google/api/client/util/j;->j(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
