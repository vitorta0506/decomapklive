.class final Leh/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/u0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/c2$a;
    }
.end annotation


# static fields
.field static final a:Leh/c2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leh/c2;

    invoke-direct {v0}, Leh/c2;-><init>()V

    sput-object v0, Leh/c2;->a:Leh/c2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/grpc.lookup.v1.RouteLookupClusterSpecifier"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/l1;)Leh/w0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            ")",
            "Leh/w0<",
            "Leh/c2$a;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid config type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/protobuf/Any;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v0, "io.grpc.lookup.v1.RouteLookupClusterSpecifier"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5
    :try_start_2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p1
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 6
    :try_start_3
    invoke-static {p1}, Leh/u1;->a(Lcom/google/protobuf/r1;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 7
    :try_start_4
    invoke-static {p1}, Lio/grpc/internal/a1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "routeLookupConfig"

    .line 8
    invoke-static {v0, v1}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 9
    invoke-static {v0}, Leh/c2$a;->b(Ljava/util/Map;)Leh/c2$a;

    move-result-object v0

    invoke-static {v0}, Leh/w0;->a(Ljava/lang/Object;)Leh/w0;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    return-object p1

    .line 10
    :catch_0
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse RouteLookupClusterSpecifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid proto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dependency for \'io.grpc:grpc-rls\' is missing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing RouteLookupConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1

    return-object p1
.end method
