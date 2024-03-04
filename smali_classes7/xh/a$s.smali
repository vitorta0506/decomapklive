.class final Lxh/a$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lxh/a$s;->a(Ljava/lang/Throwable;)V

    return-void
.end method
