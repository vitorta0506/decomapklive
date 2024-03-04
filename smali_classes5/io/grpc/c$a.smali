.class public final Lio/grpc/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/c$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/grpc/c$a;->b:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lio/grpc/c$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/c$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lio/grpc/c$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/c$a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "debugString"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/grpc/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/c$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lio/grpc/c$a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "debugString"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/grpc/c$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/c$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/c$a;->a:Ljava/lang/String;

    return-object v0
.end method
