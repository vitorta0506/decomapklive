.class final Lv6/c$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv6/c$e$k;,
        Lv6/c$e$j;
    }
.end annotation


# static fields
.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lv6/c$e$k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/protobuf/d3;

.field private final b:Lv6/c$g;

.field private final c:Z

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Lv6/c$f;

.field private final i:Lcom/google/gson/Gson;

.field private final j:Ljava/lang/CharSequence;

.field private final k:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lv6/c$e;->i()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lv6/c$e;->l:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/d3;Lv6/c$g;ZLjava/util/Set;ZLjava/lang/Appendable;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/d3;",
            "Lv6/c$g;",
            "Z",
            "Ljava/util/Set<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;Z",
            "Ljava/lang/Appendable;",
            "ZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv6/c$e;->a:Lcom/google/protobuf/d3;

    .line 3
    iput-object p2, p0, Lv6/c$e;->b:Lv6/c$g;

    .line 4
    iput-boolean p3, p0, Lv6/c$e;->c:Z

    .line 5
    iput-object p4, p0, Lv6/c$e;->d:Ljava/util/Set;

    .line 6
    iput-boolean p5, p0, Lv6/c$e;->e:Z

    .line 7
    iput-boolean p8, p0, Lv6/c$e;->f:Z

    .line 8
    iput-boolean p9, p0, Lv6/c$e;->g:Z

    .line 9
    invoke-static {}, Lv6/c$e$j;->a()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lv6/c$e;->i:Lcom/google/gson/Gson;

    const/4 p1, 0x0

    if-eqz p7, :cond_0

    .line 10
    new-instance p2, Lv6/c$b;

    invoke-direct {p2, p6, p1}, Lv6/c$b;-><init>(Ljava/lang/Appendable;Lv6/c$a;)V

    iput-object p2, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string p1, ""

    .line 11
    iput-object p1, p0, Lv6/c$e;->j:Ljava/lang/CharSequence;

    .line 12
    iput-object p1, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    goto :goto_0

    .line 13
    :cond_0
    new-instance p2, Lv6/c$c;

    invoke-direct {p2, p6, p1}, Lv6/c$c;-><init>(Ljava/lang/Appendable;Lv6/c$a;)V

    iput-object p2, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string p1, " "

    .line 14
    iput-object p1, p0, Lv6/c$e;->j:Ljava/lang/CharSequence;

    const-string p1, "\n"

    .line 15
    iput-object p1, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method static synthetic a(Lv6/c$e;Lcom/google/protobuf/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lv6/c$e;->l(Lcom/google/protobuf/r1;)V

    return-void
.end method

.method static synthetic b(Lv6/c$e;Lcom/google/protobuf/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lv6/c$e;->x(Lcom/google/protobuf/r1;)V

    return-void
.end method

.method static synthetic c(Lv6/c$e;Lcom/google/protobuf/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lv6/c$e;->v(Lcom/google/protobuf/r1;)V

    return-void
.end method

.method static synthetic d(Lv6/c$e;Lcom/google/protobuf/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lv6/c$e;->m(Lcom/google/protobuf/r1;)V

    return-void
.end method

.method static synthetic e(Lv6/c$e;Lcom/google/protobuf/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lv6/c$e;->o(Lcom/google/protobuf/r1;)V

    return-void
.end method

.method static synthetic f(Lv6/c$e;Lcom/google/protobuf/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lv6/c$e;->u(Lcom/google/protobuf/r1;)V

    return-void
.end method

.method static synthetic g(Lv6/c$e;Lcom/google/protobuf/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lv6/c$e;->w(Lcom/google/protobuf/r1;)V

    return-void
.end method

.method static synthetic h(Lv6/c$e;Lcom/google/protobuf/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lv6/c$e;->p(Lcom/google/protobuf/r1;)V

    return-void
.end method

.method private static i()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lv6/c$e$k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/Any;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv6/c$e$a;

    invoke-direct {v2}, Lv6/c$e$a;-><init>()V

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lv6/c$e$b;

    invoke-direct {v1}, Lv6/c$e$b;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/google/protobuf/Int32Value;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/google/protobuf/Int64Value;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UInt64Value;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/StringValue;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/BytesValue;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/FloatValue;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/DoubleValue;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv6/c$e$c;

    invoke-direct {v2}, Lv6/c$e$c;-><init>()V

    .line 15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/protobuf/Duration;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv6/c$e$d;

    invoke-direct {v2}, Lv6/c$e$d;-><init>()V

    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/google/protobuf/FieldMask;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv6/c$e$e;

    invoke-direct {v2}, Lv6/c$e$e;-><init>()V

    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/google/protobuf/Struct;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv6/c$e$f;

    invoke-direct {v2}, Lv6/c$e$f;-><init>()V

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/google/protobuf/Value;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv6/c$e$g;

    invoke-direct {v2}, Lv6/c$e$g;-><init>()V

    .line 23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Lcom/google/protobuf/ListValue;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv6/c$e$h;

    invoke-direct {v2}, Lv6/c$e$h;-><init>()V

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private k(Lcom/google/protobuf/r1;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {v0}, Lv6/c$f;->c()V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3
    iget-object v1, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"@type\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lv6/c$e;->j:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lv6/c$e;->i:Lcom/google/gson/Gson;

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    iget-boolean v1, p0, Lv6/c$e;->c:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lv6/c$e;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getAllFields()Ljava/util/Map;

    move-result-object p1

    goto :goto_3

    .line 6
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-interface {p1}, Lcom/google/protobuf/r1;->getAllFields()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 7
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 8
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->B()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_4

    .line 10
    invoke-interface {p1, v3}, Lcom/google/protobuf/r1;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m()Lcom/google/protobuf/Descriptors$i;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 12
    invoke-interface {p1, v3}, Lcom/google/protobuf/r1;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lv6/c$e;->c:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lv6/c$e;->d:Ljava/util/Set;

    .line 14
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    :cond_6
    invoke-interface {p1, v3}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-object p1, v1

    .line 16
    :goto_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz p2, :cond_8

    .line 17
    iget-object v2, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    const/4 p2, 0x1

    .line 18
    :goto_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lv6/c$e;->n(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    if-eqz p2, :cond_a

    .line 19
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    iget-object p2, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 20
    :cond_a
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1}, Lv6/c$f;->b()V

    .line 21
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string p2, "}"

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private l(Lcom/google/protobuf/r1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string v0, "{}"

    invoke-interface {p1, v0}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    const-string v1, "type_url"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$b;->i(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    const-string v2, "value"

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/protobuf/Descriptors$b;->i(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v2, v3, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v2, v3, :cond_4

    .line 8
    invoke-interface {p1, v1}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lv6/c$e;->a:Lcom/google/protobuf/d3;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/d3;->c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    if-nez v2, :cond_2

    .line 10
    iget-object v2, p0, Lv6/c$e;->b:Lv6/c$g;

    invoke-virtual {v2, v1}, Lv6/c$g;->b(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find type for url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    :goto_0
    invoke-interface {p1, v0}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 13
    invoke-static {v2}, Lcom/google/protobuf/x;->f(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/x;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/l1;

    .line 14
    sget-object v0, Lv6/c$e;->l:Ljava/util/Map;

    invoke-static {v1}, Lv6/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv6/c$e$k;

    if-eqz v0, :cond_3

    .line 15
    iget-object v2, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v2, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {v2}, Lv6/c$f;->c()V

    .line 17
    iget-object v2, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"@type\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lv6/c$e;->j:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lv6/c$e;->i:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"value\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lv6/c$e;->j:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 19
    invoke-interface {v0, p0, p1}, Lv6/c$e$k;->a(Lv6/c$e;Lcom/google/protobuf/r1;)V

    .line 20
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    iget-object v0, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1}, Lv6/c$f;->b()V

    .line 22
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string v0, "}"

    invoke-interface {p1, v0}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_3
    invoke-direct {p0, p1, v1}, Lv6/c$e;->k(Lcom/google/protobuf/r1;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 24
    :cond_4
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v0, "Invalid Any type."

    invoke-direct {p1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private m(Lcom/google/protobuf/r1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lv6/c$e;->y(Lcom/google/protobuf/r1;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/Duration;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Duration;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lv6/a;->i(Lcom/google/protobuf/Duration;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private n(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lv6/c$e;->e:Z

    const-string v1, "\":"

    const-string v2, "\""

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv6/c$e;->j:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv6/c$e;->j:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lv6/c$e;->q(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p1, p2}, Lv6/c$e;->r(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2}, Lv6/c$e;->s(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private o(Lcom/google/protobuf/r1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lv6/c$e;->y(Lcom/google/protobuf/r1;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/FieldMask;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/FieldMask;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lv6/b;->a(Lcom/google/protobuf/FieldMask;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private p(Lcom/google/protobuf/r1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    const-string v1, "values"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$b;->i(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lv6/c$e;->r(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v0, "Invalid ListValue type."

    invoke-direct {p1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private q(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    const-string v0, "key"

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/Descriptors$b;->i(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    const-string v1, "value"

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/protobuf/Descriptors$b;->i(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 4
    iget-object v1, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {v1}, Lv6/c$f;->c()V

    .line 6
    check-cast p2, Ljava/util/List;

    .line 7
    iget-boolean v1, p0, Lv6/c$e;->g:Z

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v2, v3, :cond_0

    .line 9
    new-instance v1, Lv6/c$e$i;

    invoke-direct {v1, p0}, Lv6/c$e$i;-><init>(Lv6/c$e;)V

    .line 10
    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 12
    move-object v3, v1

    check-cast v3, Lcom/google/protobuf/l1;

    .line 13
    invoke-interface {v3, v0}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    .line 14
    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p2

    :cond_2
    const/4 v1, 0x0

    .line 16
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, Lcom/google/protobuf/l1;

    .line 18
    invoke-interface {v2, v0}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    invoke-interface {v2, p1}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 20
    iget-object v5, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    .line 21
    :goto_2
    invoke-direct {p0, v0, v3, v4}, Lv6/c$e;->t(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Z)V

    .line 22
    iget-object v3, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lv6/c$e;->j:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 23
    invoke-direct {p0, p1, v2}, Lv6/c$e;->s(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 24
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    iget-object p2, p0, Lv6/c$e;->k:Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 25
    :cond_5
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1}, Lv6/c$f;->b()V

    .line 26
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string p2, "}"

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 27
    :cond_6
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string p2, "Invalid map field."

    invoke-direct {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private r(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string v1, "["

    invoke-interface {v0, v1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 2
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lv6/c$e;->j:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    invoke-direct {p0, p1, v1}, Lv6/c$e;->s(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string p2, "]"

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private s(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lv6/c$e;->t(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Z)V

    return-void
.end method

.method private t(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lv6/c$a;->a:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "\"-Infinity\""

    const-string v2, "\"Infinity\""

    const-string v3, "\"NaN\""

    const-string v4, "\""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    check-cast p2, Lcom/google/protobuf/l1;

    invoke-virtual {p0, p2}, Lv6/c$e;->j(Lcom/google/protobuf/r1;)V

    goto/16 :goto_2

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->q()Lcom/google/protobuf/Descriptors$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$d;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "google.protobuf.NullValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string p2, "null"

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_10

    .line 6
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-boolean p1, p0, Lv6/c$e;->f:Z

    if-nez p1, :cond_3

    move-object p1, p2

    check-cast p1, Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p2, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 9
    :cond_3
    :goto_0
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    check-cast p2, Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$e;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 10
    :pswitch_2
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->b()Lcom/google/common/io/BaseEncoding;

    move-result-object p3

    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/common/io/BaseEncoding;->g([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 13
    :pswitch_3
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    iget-object p3, p0, Lv6/c$e;->i:Lcom/google/gson/Gson;

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 14
    :pswitch_4
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lv6/c;->b(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_5
    if-eqz p3, :cond_4

    .line 15
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 16
    :cond_4
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lv6/c;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_10

    .line 17
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 18
    :pswitch_6
    check-cast p2, Ljava/lang/Double;

    .line 19
    invoke-virtual {p2}, Ljava/lang/Double;->isNaN()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v3}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 21
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Double;->isInfinite()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmpg-double p3, p1, v3

    if-gez p3, :cond_6

    .line 23
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 24
    :cond_6
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    if-eqz p3, :cond_8

    .line 25
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 26
    :cond_8
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_10

    .line 27
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 28
    :pswitch_7
    check-cast p2, Ljava/lang/Float;

    .line 29
    invoke-virtual {p2}, Ljava/lang/Float;->isNaN()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 30
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v3}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 31
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Float;->isInfinite()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 32
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_a

    .line 33
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 34
    :cond_a
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    if-eqz p3, :cond_c

    .line 35
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 36
    :cond_c
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_10

    .line 37
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_8
    if-eqz p3, :cond_d

    .line 38
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 39
    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 40
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string p2, "true"

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 41
    :cond_e
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string p2, "false"

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz p3, :cond_10

    .line 42
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 43
    :pswitch_9
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_a
    if-eqz p3, :cond_f

    .line 44
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    .line 45
    :cond_f
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_10

    .line 46
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    invoke-interface {p1, v4}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private u(Lcom/google/protobuf/r1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    const-string v1, "fields"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$b;->i(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lv6/c$e;->q(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v0, "Invalid Struct type."

    invoke-direct {p1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private v(Lcom/google/protobuf/r1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lv6/c$e;->y(Lcom/google/protobuf/r1;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/Timestamp;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Timestamp;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lv6/c$e;->h:Lv6/c$f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lv6/d;->h(Lcom/google/protobuf/Timestamp;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private w(Lcom/google/protobuf/r1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getAllFields()Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lv6/c$e;->h:Lv6/c$f;

    const-string v0, "null"

    invoke-interface {p1, v0}, Lv6/c$f;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lv6/c$e;->s(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v0, "Invalid Value type."

    invoke-direct {p1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private x(Lcom/google/protobuf/r1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    const-string v1, "value"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$b;->i(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lv6/c$e;->s(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v0, "Invalid Wrapper type."

    invoke-direct {p1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private y(Lcom/google/protobuf/r1;)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/l1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/l1;

    invoke-interface {p1}, Lcom/google/protobuf/o1;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Lcom/google/protobuf/l1$a;

    invoke-interface {p1}, Lcom/google/protobuf/l1$a;->build()Lcom/google/protobuf/l1;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/o1;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method j(Lcom/google/protobuf/r1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lv6/c$e;->l:Ljava/util/Map;

    .line 2
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv6/c$e$k;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0, p1}, Lv6/c$e$k;->a(Lv6/c$e;Lcom/google/protobuf/r1;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lv6/c$e;->k(Lcom/google/protobuf/r1;Ljava/lang/String;)V

    return-void
.end method
