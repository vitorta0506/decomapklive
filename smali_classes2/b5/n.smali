.class final Lb5/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lb5/a;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lb5/o;


# direct methods
.method constructor <init>(Lb5/o;Lb5/a;II)V
    .locals 0

    iput-object p1, p0, Lb5/n;->d:Lb5/o;

    iput-object p2, p0, Lb5/n;->a:Lb5/a;

    iput p3, p0, Lb5/n;->b:I

    iput p4, p0, Lb5/n;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lb5/n;->d:Lb5/o;

    iget-object v1, p0, Lb5/n;->a:Lb5/a;

    iget v4, p0, Lb5/n;->b:I

    iget v5, p0, Lb5/n;->c:I

    new-instance v14, Lb5/c;

    invoke-virtual {v1}, Lb5/a;->d()I

    move-result v3

    invoke-virtual {v1}, Lb5/a;->a()J

    move-result-wide v6

    invoke-virtual {v1}, Lb5/a;->f()J

    move-result-wide v8

    invoke-virtual {v1}, Lb5/a;->h()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Lb5/a;->g()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lb5/a;->c()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1}, Lb5/a;->i()Ljava/util/List;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lb5/c;-><init>(IIIJJLjava/util/List;Ljava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    invoke-virtual {v0, v14}, Lb5/o;->i(Lb5/a;)V

    return-void
.end method
