.class public final synthetic Lj3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj3/d$a$a$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lj3/d$a$a$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/c;->a:Lj3/d$a$a$a;

    iput p2, p0, Lj3/c;->b:I

    iput-wide p3, p0, Lj3/c;->c:J

    iput-wide p5, p0, Lj3/c;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lj3/c;->a:Lj3/d$a$a$a;

    iget v1, p0, Lj3/c;->b:I

    iget-wide v2, p0, Lj3/c;->c:J

    iget-wide v4, p0, Lj3/c;->d:J

    invoke-static/range {v0 .. v5}, Lj3/d$a$a;->a(Lj3/d$a$a$a;IJJ)V

    return-void
.end method
