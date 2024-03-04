.class final Lcom/google/protobuf/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/x1;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    sget-object v0, Lcom/google/protobuf/GeneratedMessageV3$f;->a:Lcom/google/protobuf/GeneratedMessageV3$f;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
