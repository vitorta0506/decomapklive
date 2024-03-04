.class public final Lcom/google/protobuf/w2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/k0;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/protobuf/ProtoSyntax;

.field private c:Z

.field private d:Z

.field private e:[I

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/w2$a;->e:[I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/w2$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/w2;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/w2$a;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/w2$a;->b:Lcom/google/protobuf/ProtoSyntax;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/w2$a;->c:Z

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/w2$a;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5
    new-instance v0, Lcom/google/protobuf/w2;

    iget-object v2, p0, Lcom/google/protobuf/w2$a;->b:Lcom/google/protobuf/ProtoSyntax;

    iget-boolean v3, p0, Lcom/google/protobuf/w2$a;->d:Z

    iget-object v4, p0, Lcom/google/protobuf/w2$a;->e:[I

    iget-object v1, p0, Lcom/google/protobuf/w2$a;->a:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/protobuf/k0;

    .line 6
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lcom/google/protobuf/k0;

    iget-object v6, p0, Lcom/google/protobuf/w2$a;->f:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/w2;-><init>(Lcom/google/protobuf/ProtoSyntax;Z[I[Lcom/google/protobuf/k0;Ljava/lang/Object;)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify a proto syntax"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can only build once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b([I)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/w2$a;->e:[I

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/w2$a;->f:Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/google/protobuf/k0;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/w2$a;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/w2$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Builder can only build once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/w2$a;->d:Z

    return-void
.end method

.method public f(Lcom/google/protobuf/ProtoSyntax;)V
    .locals 1

    const-string v0, "syntax"

    invoke-static {p1, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ProtoSyntax;

    iput-object p1, p0, Lcom/google/protobuf/w2$a;->b:Lcom/google/protobuf/ProtoSyntax;

    return-void
.end method
