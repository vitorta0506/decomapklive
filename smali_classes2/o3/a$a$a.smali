.class public Lo3/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo3/a$a$a;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lo3/a$a;)V
    .locals 1
    .param p1    # Lo3/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo3/a$a$a;->a:Ljava/lang/Boolean;

    .line 3
    invoke-static {p1}, Lo3/a$a;->b(Lo3/a$a;)Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lo3/a$a;->d(Lo3/a$a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo3/a$a$a;->a:Ljava/lang/Boolean;

    .line 5
    invoke-static {p1}, Lo3/a$a;->c(Lo3/a$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo3/a$a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lo3/a$a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lo3/a$a$a;->b:Ljava/lang/String;

    return-object p0
.end method
