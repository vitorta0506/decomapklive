.class final Lje/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lje/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfi/a<",
        "Lde/b<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lbe/b;


# direct methods
.method constructor <init>(Lbe/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lje/b$b;->a:Lbe/b;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lje/b$b;->a:Lbe/b;

    .line 2
    invoke-interface {v0}, Lbe/c;->j()Lde/b;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/b;

    return-object v0
.end method
