.class public final synthetic Lk3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk3/w$a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lk3/w$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/s;->a:Lk3/w$a;

    iput-object p2, p0, Lk3/s;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lk3/s;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk3/s;->a:Lk3/w$a;

    iget-object v1, p0, Lk3/s;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lk3/s;->c:J

    invoke-static {v0, v1, v2, v3}, Lk3/w$a;->e(Lk3/w$a;Ljava/lang/Object;J)V

    return-void
.end method
