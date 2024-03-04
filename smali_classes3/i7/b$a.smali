.class Li7/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Li7/b;


# direct methods
.method constructor <init>(Li7/b;)V
    .locals 0

    iput-object p1, p0, Li7/b$a;->a:Li7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

    invoke-virtual {p0, p1}, Li7/b$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
