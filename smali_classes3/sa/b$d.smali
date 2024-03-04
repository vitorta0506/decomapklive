.class Lsa/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/b;->i()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsa/b;


# direct methods
.method constructor <init>(Lsa/b;)V
    .locals 0

    iput-object p1, p0, Lsa/b$d;->a:Lsa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lsa/b$d;->a:Lsa/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsa/b;->d(Lsa/b;Z)V

    return-void
.end method
