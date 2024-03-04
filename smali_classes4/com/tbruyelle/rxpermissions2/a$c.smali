.class Lcom/tbruyelle/rxpermissions2/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/a;->e([Ljava/lang/String;)Lio/reactivex/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/q<",
        "TT;",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/tbruyelle/rxpermissions2/a;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/a$c;->b:Lcom/tbruyelle/rxpermissions2/a;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/a$c;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/k;)Lio/reactivex/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;)",
            "Lio/reactivex/p<",
            "Lte/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/a$c;->b:Lcom/tbruyelle/rxpermissions2/a;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/a$c;->a:[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tbruyelle/rxpermissions2/a;->b(Lcom/tbruyelle/rxpermissions2/a;Lio/reactivex/k;[Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/a$c;->a:[Ljava/lang/String;

    array-length v0, v0

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/k;->buffer(I)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/tbruyelle/rxpermissions2/a$c$a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a$c$a;-><init>(Lcom/tbruyelle/rxpermissions2/a$c;)V

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/k;->flatMap(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method
