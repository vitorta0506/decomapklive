.class public Lcom/google/protobuf/TextFormat$Parser$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

.field private e:Lcom/google/protobuf/d3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser$a;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser$a;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser$a;->c:Z

    .line 5
    sget-object v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->ALLOW_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Parser$a;->d:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    .line 6
    invoke-static {}, Lcom/google/protobuf/d3;->d()Lcom/google/protobuf/d3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Parser$a;->e:Lcom/google/protobuf/d3;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/TextFormat$Parser;
    .locals 9

    new-instance v8, Lcom/google/protobuf/TextFormat$Parser;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Parser$a;->e:Lcom/google/protobuf/d3;

    iget-boolean v2, p0, Lcom/google/protobuf/TextFormat$Parser$a;->a:Z

    iget-boolean v3, p0, Lcom/google/protobuf/TextFormat$Parser$a;->b:Z

    iget-boolean v4, p0, Lcom/google/protobuf/TextFormat$Parser$a;->c:Z

    iget-object v5, p0, Lcom/google/protobuf/TextFormat$Parser$a;->d:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/TextFormat$Parser;-><init>(Lcom/google/protobuf/d3;ZZZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/y2;Lcom/google/protobuf/TextFormat$a;)V

    return-object v8
.end method
