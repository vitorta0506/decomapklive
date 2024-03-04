.class public Lwe/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lwe/a;

.field private final b:Lwe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lwe/a;Lwe/d;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/a;",
            "Lwe/d<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwe/c;->a:Lwe/a;

    .line 3
    iput-object p2, p0, Lwe/c;->b:Lwe/d;

    .line 4
    iput-object p3, p0, Lwe/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lwe/c;->a:Lwe/a;

    invoke-interface {v0}, Lwe/a;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lwe/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwe/c;->a:Lwe/a;

    invoke-interface {v0}, Lwe/a;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lwe/c;->b:Lwe/d;

    iget-object v2, p0, Lwe/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lwe/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lwe/c;->a:Lwe/a;

    invoke-interface {v0}, Lwe/a;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lwe/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lwe/c;->b:Lwe/d;

    invoke-interface {v3, p1}, Lwe/d;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {v0, p1}, Lwe/a;->a(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method
