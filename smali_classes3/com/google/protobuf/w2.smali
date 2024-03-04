.class final Lcom/google/protobuf/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/w2$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/ProtoSyntax;

.field private final b:Z

.field private final c:[I

.field private final d:[Lcom/google/protobuf/k0;

.field private final e:Lcom/google/protobuf/o1;


# direct methods
.method constructor <init>(Lcom/google/protobuf/ProtoSyntax;Z[I[Lcom/google/protobuf/k0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/w2;->a:Lcom/google/protobuf/ProtoSyntax;

    .line 3
    iput-boolean p2, p0, Lcom/google/protobuf/w2;->b:Z

    .line 4
    iput-object p3, p0, Lcom/google/protobuf/w2;->c:[I

    .line 5
    iput-object p4, p0, Lcom/google/protobuf/w2;->d:[Lcom/google/protobuf/k0;

    const-string p1, "defaultInstance"

    .line 6
    invoke-static {p5, p1}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o1;

    iput-object p1, p0, Lcom/google/protobuf/w2;->e:Lcom/google/protobuf/o1;

    return-void
.end method

.method public static f(I)Lcom/google/protobuf/w2$a;
    .locals 1

    new-instance v0, Lcom/google/protobuf/w2$a;

    invoke-direct {v0, p0}, Lcom/google/protobuf/w2$a;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/w2;->b:Z

    return v0
.end method

.method public b()Lcom/google/protobuf/o1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w2;->e:Lcom/google/protobuf/o1;

    return-object v0
.end method

.method public c()Lcom/google/protobuf/ProtoSyntax;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w2;->a:Lcom/google/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public d()[I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w2;->c:[I

    return-object v0
.end method

.method public e()[Lcom/google/protobuf/k0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w2;->d:[Lcom/google/protobuf/k0;

    return-object v0
.end method
