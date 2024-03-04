.class Lte/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lte/a;->a(Ljava/util/List;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/q<",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lte/a;


# direct methods
.method constructor <init>(Lte/a;)V
    .locals 0

    iput-object p1, p0, Lte/a$c;->a:Lte/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lte/a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean p1, p1, Lte/a;->b:Z

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lte/a$c;->a(Lte/a;)Z

    move-result p1

    return p1
.end method
