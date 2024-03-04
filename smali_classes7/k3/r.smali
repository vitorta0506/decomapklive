.class public final synthetic Lk3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk3/w$a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lk3/w$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/r;->a:Lk3/w$a;

    iput-object p2, p0, Lk3/r;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/r;->a:Lk3/w$a;

    iget-object v1, p0, Lk3/r;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lk3/w$a;->c(Lk3/w$a;Ljava/lang/Exception;)V

    return-void
.end method
