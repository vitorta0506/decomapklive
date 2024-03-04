.class Lcn/jiguang/ao/a$a;
.super Lcn/jiguang/o/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jiguang/ao/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/o/e;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ao/a$a;->a:Landroid/content/Context;

    const-string p1, "JWake#RequestConfigAction"

    iput-object p1, p0, Lcn/jiguang/o/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/ao/a$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/ao/a;->c(Landroid/content/Context;)Lcn/jiguang/ap/a;

    return-void
.end method
