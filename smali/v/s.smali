.class Lv/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/h;


# instance fields
.field private a:Lv/h;


# direct methods
.method constructor <init>(Lv/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv/s;->a:Lv/h;

    return-void
.end method


# virtual methods
.method public a(Lu/a;)Z
    .locals 1

    iget-object v0, p0, Lv/s;->a:Lv/h;

    invoke-interface {v0, p1}, Lv/h;->a(Lu/a;)Z

    move-result p1

    return p1
.end method
