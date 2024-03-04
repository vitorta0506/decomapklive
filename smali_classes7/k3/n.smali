.class public final synthetic Lk3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk3/w$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lk3/w$a;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/n;->a:Lk3/w$a;

    iput-wide p2, p0, Lk3/n;->b:J

    iput p4, p0, Lk3/n;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk3/n;->a:Lk3/w$a;

    iget-wide v1, p0, Lk3/n;->b:J

    iget v3, p0, Lk3/n;->c:I

    invoke-static {v0, v1, v2, v3}, Lk3/w$a;->j(Lk3/w$a;JI)V

    return-void
.end method
