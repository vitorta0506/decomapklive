.class Lcom/google/protobuf/s$d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/s$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/s$d$b;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/s$d$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/s$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/s$d$b;-><init>()V

    return-void
.end method
