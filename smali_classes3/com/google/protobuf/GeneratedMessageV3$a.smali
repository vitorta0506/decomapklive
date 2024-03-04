.class Lcom/google/protobuf/GeneratedMessageV3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageV3$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/GeneratedMessageV3;->newBuilderForType(Lcom/google/protobuf/a$b;)Lcom/google/protobuf/l1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/protobuf/a$b;

.field final synthetic b:Lcom/google/protobuf/GeneratedMessageV3;


# direct methods
.method constructor <init>(Lcom/google/protobuf/GeneratedMessageV3;Lcom/google/protobuf/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$a;->b:Lcom/google/protobuf/GeneratedMessageV3;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3$a;->a:Lcom/google/protobuf/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$a;->a:Lcom/google/protobuf/a$b;

    invoke-interface {v0}, Lcom/google/protobuf/a$b;->a()V

    return-void
.end method
