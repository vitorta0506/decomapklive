.class final Lcom/google/protobuf/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/protobuf/k0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Field;

.field private final b:Lcom/google/protobuf/FieldType;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ljava/lang/reflect/Field;

.field private final f:I

.field private final g:Z

.field private final h:Z

.field private final i:Lcom/google/protobuf/c2;

.field private final j:Ljava/lang/reflect/Field;

.field private final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;

.field private final m:Lcom/google/protobuf/u0$e;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/c2;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/google/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/google/protobuf/c2;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/u0$e;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/k0;->a:Ljava/lang/reflect/Field;

    .line 3
    iput-object p3, p0, Lcom/google/protobuf/k0;->b:Lcom/google/protobuf/FieldType;

    .line 4
    iput-object p4, p0, Lcom/google/protobuf/k0;->c:Ljava/lang/Class;

    .line 5
    iput p2, p0, Lcom/google/protobuf/k0;->d:I

    .line 6
    iput-object p5, p0, Lcom/google/protobuf/k0;->e:Ljava/lang/reflect/Field;

    .line 7
    iput p6, p0, Lcom/google/protobuf/k0;->f:I

    .line 8
    iput-boolean p7, p0, Lcom/google/protobuf/k0;->g:Z

    .line 9
    iput-boolean p8, p0, Lcom/google/protobuf/k0;->h:Z

    .line 10
    iput-object p9, p0, Lcom/google/protobuf/k0;->i:Lcom/google/protobuf/c2;

    .line 11
    iput-object p10, p0, Lcom/google/protobuf/k0;->k:Ljava/lang/Class;

    .line 12
    iput-object p11, p0, Lcom/google/protobuf/k0;->l:Ljava/lang/Object;

    .line 13
    iput-object p12, p0, Lcom/google/protobuf/k0;->m:Lcom/google/protobuf/u0$e;

    .line 14
    iput-object p13, p0, Lcom/google/protobuf/k0;->j:Ljava/lang/reflect/Field;

    return-void
.end method

.method private static a(I)V
    .locals 3

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldNumber must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Z)Lcom/google/protobuf/k0;
    .locals 15

    move-object/from16 v3, p2

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/k0;->a(I)V

    const-string v0, "field"

    move-object v1, p0

    .line 2
    invoke-static {p0, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    .line 3
    invoke-static {v3, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/google/protobuf/FieldType;->MESSAGE_LIST:Lcom/google/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/google/protobuf/FieldType;->GROUP_LIST:Lcom/google/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    .line 5
    new-instance v14, Lcom/google/protobuf/k0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/k0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/c2;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Lcom/google/protobuf/u0$e;)Lcom/google/protobuf/k0;
    .locals 15

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/k0;->a(I)V

    const-string v0, "field"

    move-object v2, p0

    .line 2
    invoke-static {p0, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/protobuf/k0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/google/protobuf/k0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/c2;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static e(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/u0$e;)Lcom/google/protobuf/k0;
    .locals 15

    const-string v0, "mapDefaultEntry"

    move-object/from16 v12, p2

    .line 1
    invoke-static {v12, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/k0;->a(I)V

    const-string v0, "field"

    move-object v2, p0

    .line 3
    invoke-static {p0, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/google/protobuf/k0;

    sget-object v4, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/google/protobuf/k0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/c2;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static f(ILcom/google/protobuf/FieldType;Lcom/google/protobuf/c2;Ljava/lang/Class;ZLcom/google/protobuf/u0$e;)Lcom/google/protobuf/k0;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/FieldType;",
            "Lcom/google/protobuf/c2;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/google/protobuf/u0$e;",
            ")",
            "Lcom/google/protobuf/k0;"
        }
    .end annotation

    move-object/from16 v3, p1

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/k0;->a(I)V

    const-string v0, "fieldType"

    .line 2
    invoke-static {v3, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "oneof"

    move-object/from16 v9, p2

    .line 3
    invoke-static {v9, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "oneofStoredType"

    move-object/from16 v10, p3

    .line 4
    invoke-static {v10, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/FieldType;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v14, Lcom/google/protobuf/k0;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/k0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/c2;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oneof is only supported for scalar fields. Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/google/protobuf/k0;
    .locals 15

    move-object/from16 v3, p2

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/k0;->a(I)V

    const-string v0, "field"

    move-object v1, p0

    .line 2
    invoke-static {p0, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    .line 3
    invoke-static {v3, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/google/protobuf/FieldType;->MESSAGE_LIST:Lcom/google/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/google/protobuf/FieldType;->GROUP_LIST:Lcom/google/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    .line 5
    new-instance v14, Lcom/google/protobuf/k0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/k0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/c2;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)Lcom/google/protobuf/k0;
    .locals 15

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/k0;->a(I)V

    const-string v0, "field"

    move-object v2, p0

    .line 2
    invoke-static {p0, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/protobuf/k0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v14}, Lcom/google/protobuf/k0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/c2;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static i(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/u0$e;)Lcom/google/protobuf/k0;
    .locals 15

    move-object/from16 v5, p3

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/k0;->a(I)V

    const-string v0, "field"

    move-object v1, p0

    .line 2
    invoke-static {p0, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v3, p2

    .line 3
    invoke-static {v3, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "presenceField"

    .line 4
    invoke-static {v5, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 5
    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/k0;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move/from16 v6, p4

    .line 7
    new-instance v14, Lcom/google/protobuf/k0;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/k0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/c2;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)V

    return-object v14
.end method

.method public static j(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/u0$e;)Lcom/google/protobuf/k0;
    .locals 15

    move-object/from16 v5, p3

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/k0;->a(I)V

    const-string v0, "field"

    move-object v1, p0

    .line 2
    invoke-static {p0, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v3, p2

    .line 3
    invoke-static {v3, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "presenceField"

    .line 4
    invoke-static {v5, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 5
    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/k0;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move/from16 v6, p4

    .line 7
    new-instance v14, Lcom/google/protobuf/k0;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/k0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/c2;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)V

    return-object v14
.end method

.method public static k(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;)Lcom/google/protobuf/k0;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/google/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/k0;"
        }
    .end annotation

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/k0;->a(I)V

    const-string v0, "field"

    move-object v2, p0

    .line 2
    invoke-static {p0, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v4, p2

    .line 3
    invoke-static {v4, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "messageClass"

    move-object/from16 v5, p3

    .line 4
    invoke-static {v5, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/protobuf/k0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/protobuf/k0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/c2;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/u0$e;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method private static x(I)Z
    .locals 1

    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public b(Lcom/google/protobuf/k0;)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k0;->d:I

    iget p1, p1, Lcom/google/protobuf/k0;->d:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/k0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k0;->b(Lcom/google/protobuf/k0;)I

    move-result p1

    return p1
.end method

.method public l()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/k0;->j:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public m()Lcom/google/protobuf/u0$e;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/k0;->m:Lcom/google/protobuf/u0$e;

    return-object v0
.end method

.method public o()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/k0;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k0;->d:I

    return v0
.end method

.method public q()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/k0;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public r()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/k0$a;->a:[I

    iget-object v1, p0, Lcom/google/protobuf/k0;->b:Lcom/google/protobuf/FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/k0;->c:Ljava/lang/Class;

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/k0;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/k0;->k:Ljava/lang/Class;

    :goto_0
    return-object v0
.end method

.method public s()Lcom/google/protobuf/c2;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/k0;->i:Lcom/google/protobuf/c2;

    return-object v0
.end method

.method public t()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/k0;->e:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k0;->f:I

    return v0
.end method

.method public v()Lcom/google/protobuf/FieldType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/k0;->b:Lcom/google/protobuf/FieldType;

    return-object v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/k0;->h:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/k0;->g:Z

    return v0
.end method
