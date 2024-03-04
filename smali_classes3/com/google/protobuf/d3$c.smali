.class Lcom/google/protobuf/d3$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/google/protobuf/d3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/d3;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/d3;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/protobuf/d3$c;->a:Lcom/google/protobuf/d3;

    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/d3;
    .locals 1

    sget-object v0, Lcom/google/protobuf/d3$c;->a:Lcom/google/protobuf/d3;

    return-object v0
.end method
