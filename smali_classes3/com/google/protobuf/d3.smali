.class public Lcom/google/protobuf/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/d3$b;,
        Lcom/google/protobuf/d3$c;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/protobuf/d3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/d3;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/d3;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/protobuf/d3;->b:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static d()Lcom/google/protobuf/d3;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/d3$c;->a()Lcom/google/protobuf/d3;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3
    array-length p0, v0

    sub-int/2addr p0, v2

    aget-object p0, v0, p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type url found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f()Lcom/google/protobuf/d3$b;
    .locals 2

    new-instance v0, Lcom/google/protobuf/d3$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/d3$b;-><init>(Lcom/google/protobuf/d3$a;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/d3;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$b;

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/d3;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d3;->b(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    return-object p1
.end method
