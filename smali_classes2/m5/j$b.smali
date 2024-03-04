.class Lm5/j$b;
.super Lio/grpc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lm5/j;


# direct methods
.method public constructor <init>(Lm5/j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/j$b;->b:Lm5/j;

    invoke-direct {p0}, Lio/grpc/d;-><init>()V

    .line 2
    iput p2, p0, Lm5/j$b;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm5/j$b;->b:Lm5/j;

    invoke-static {v0}, Lm5/j;->r(Lm5/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/c;",
            ")",
            "Lio/grpc/g<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm5/j$b;->b:Lm5/j;

    iget v1, p0, Lm5/j$b;->a:I

    invoke-virtual {v0, v1}, Lm5/j;->w(I)Lm5/j$c;

    move-result-object v0

    .line 2
    new-instance v1, Lm5/j$d;

    invoke-static {v0}, Lm5/j$c;->a(Lm5/j$c;)Lio/grpc/q0;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lm5/j$d;-><init>(Lio/grpc/g;Lm5/j$c;)V

    return-object v1
.end method
