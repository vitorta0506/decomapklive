.class Lcom/tbruyelle/rxpermissions2/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/a;->n(Lio/reactivex/k;[Ljava/lang/String;)Lio/reactivex/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/Object;",
        "Lio/reactivex/k<",
        "Lte/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/tbruyelle/rxpermissions2/a;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/a$d;->b:Lcom/tbruyelle/rxpermissions2/a;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/a$d;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/k<",
            "Lte/a;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/tbruyelle/rxpermissions2/a$d;->b:Lcom/tbruyelle/rxpermissions2/a;

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/a$d;->a:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->c(Lcom/tbruyelle/rxpermissions2/a;[Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/a$d;->a(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method
