.class Lcom/google/protobuf/TextFormat$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/protobuf/TextFormat$b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/google/protobuf/e1;

.field private final c:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/e1;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/protobuf/e1;

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$b$a;->b:Lcom/google/protobuf/e1;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$b$a;->a:Ljava/lang/Object;

    .line 5
    :goto_0
    invoke-static {p2}, Lcom/google/protobuf/TextFormat$b$a;->b(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$b$a;->c:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-void
.end method

.method private static b(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/TextFormat$b$a;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$b$a;->d()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$b$a;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/google/protobuf/TextFormat$a;->a:[I

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$b$a;->c:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    return v4

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$b$a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$b$a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    return v4

    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    return v2

    .line 5
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$b$a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$b$a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    .line 7
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$b$a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$b$a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    .line 8
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$b$a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$b$a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    return p1

    .line 9
    :cond_8
    :goto_0
    invoke-static {}, Lcom/google/protobuf/TextFormat;->b()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "Invalid key for map field."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return v1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$b$a;->b:Lcom/google/protobuf/e1;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$b$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/TextFormat$b$a;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$b$a;->a(Lcom/google/protobuf/TextFormat$b$a;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$b$a;->b:Lcom/google/protobuf/e1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
