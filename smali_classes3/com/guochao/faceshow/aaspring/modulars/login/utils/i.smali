.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->f(Ljava/lang/Exception;)V

    return-void
.end method

.method public static d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;
    .locals 2

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    .line 4
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    const-string v1, "executeRecaptcha"

    if-eqz v0, :cond_8

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const v2, 0x8cae

    if-ne v0, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "\u64cd\u4f5c\u5df2\u4e2d\u6b62\u3002"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 5
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x8caa

    if-ne v0, v2, :cond_1

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "\u6240\u6709\u5141\u8bb8\u7684\u9a8c\u8bc1\u5c1d\u8bd5\u5747\u5df2\u7528\u5c3d\u3002"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 7
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const v2, 0x8ca6

    if-ne v0, v2, :cond_2

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "\u8d28\u8be2\u5e10\u6237\u8bf7\u6c42\u4ee4\u724c\u5df2\u8fc7\u671f\u3002"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 9
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const v2, 0x8ca8

    if-ne v0, v2, :cond_3

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "\u9a8c\u8bc1 PIN \u7684\u683c\u5f0f\u65e0\u6548\u3002"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 11
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const v2, 0x8ca7

    if-ne v0, v2, :cond_4

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "\u8d28\u8be2\u5e10\u6237\u8bf7\u6c42\u4ee4\u724c\u65e0\u6548\u3002"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 13
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const v2, 0x8ca9

    if-ne v0, v2, :cond_5

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "\u9a8c\u8bc1 PIN \u4e0e\u53d1\u9001\u5230\u88ab\u8d28\u7591\u5e10\u6237\u7684 PIN \u4e0d\u5339\u914d\u3002"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 15
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const v2, 0x8ca5

    if-ne v0, v2, :cond_6

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "\u5728\u4e24\u4e2a\u56e0\u7d20\u8eab\u4efd\u9a8c\u8bc1\u8c03\u7528\u671f\u95f4\u53d1\u751f\u5185\u90e8\u9519\u8bef\u3002"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 17
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const v2, 0x8ca4

    if-ne v0, v2, :cond_7

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "\u91cd\u65b0\u9a8c\u8bc1\u7801\u529f\u80fd\u88ab\u7981\u7528\u3002"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 19
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "message:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 21
    :cond_8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/recaptcha/a;->a(Landroid/app/Activity;)Lcom/google/android/gms/recaptcha/b;

    move-result-object v0

    .line 2
    invoke-interface {v0, p2}, Lcom/google/android/gms/recaptcha/b;->d(Lcom/google/android/gms/recaptcha/RecaptchaHandle;)Lt4/g;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;)V

    .line 3
    invoke-virtual {p2, p1, v0}, Lt4/g;->f(Landroid/app/Activity;Lt4/e;)Lt4/g;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;)V

    .line 4
    invoke-virtual {p2, p1, v0}, Lt4/g;->d(Landroid/app/Activity;Lt4/d;)Lt4/g;

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/recaptcha/a;->a(Landroid/app/Activity;)Lcom/google/android/gms/recaptcha/b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/recaptcha/RecaptchaAction;

    new-instance v2, Lcom/google/android/gms/recaptcha/RecaptchaActionType;

    const-string v3, "signup"

    invoke-direct {v2, v3}, Lcom/google/android/gms/recaptcha/RecaptchaActionType;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/recaptcha/RecaptchaAction;-><init>(Lcom/google/android/gms/recaptcha/RecaptchaActionType;)V

    .line 2
    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/recaptcha/b;->b(Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;)Lt4/g;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$d;

    invoke-direct {v0, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V

    .line 3
    invoke-virtual {p2, p1, v0}, Lt4/g;->f(Landroid/app/Activity;Lt4/e;)Lt4/g;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$c;

    invoke-direct {v0, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V

    .line 4
    invoke-virtual {p2, p1, v0}, Lt4/g;->d(Landroid/app/Activity;Lt4/d;)Lt4/g;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-interface {p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;->a(Ljava/lang/Exception;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string p2, "\u521d\u59cb\u5316\u5931\u8d25\u4e86 \u5f00\u59cb\u4eceh5\u83b7\u53d6token"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public e(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;)V
    .locals 2

    .line 1
    invoke-static {}, Lo9/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/recaptcha/a;->a(Landroid/app/Activity;)Lcom/google/android/gms/recaptcha/b;

    move-result-object v0

    const-string v1, "6LfxD78dAAAAABBJJlZ2aR6oUq9-nqpVTbBadeNn"

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/recaptcha/b;->init(Ljava/lang/String;)Lt4/g;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$b;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;)V

    .line 4
    invoke-virtual {v0, p1, v1}, Lt4/g;->f(Landroid/app/Activity;Lt4/e;)Lt4/g;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$a;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Lt4/g;->d(Landroid/app/Activity;Lt4/d;)Lt4/g;

    :cond_0
    return-void
.end method
