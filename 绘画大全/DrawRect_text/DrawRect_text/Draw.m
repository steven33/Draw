//
//  Draw.m
//  DrawRect_text
//
//  Created by fangjianli on 14-11-14.
//  Copyright (c) 2014年 计兮网（北京）科技有限公司. All rights reserved.
//

#import "Draw.h"

@implementation Draw

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();

    /*NO.1画一条线
    CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 0.5); //线条设置rgb颜色
    CGContextMoveToPoint(context, 20, 20);       //线的起点坐标
    CGContextAddLineToPoint(context, 300, 20);   //线的终点坐标
    CGContextStrokePath(context);                //开始画线
     */
   
    /*NO.2写文字
    CGContextSetLineWidth(context, 1.0);
    CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 0.5);
    UIFont *font = [UIFont systemFontOfSize:16];
    NSString *wenzi = @"这个是在视图上画文字的代码，以后可以看看\n随便写个注释什么的";
    [wenzi drawInRect:CGRectMake(0, 20, 100, 60) withAttributes:[NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName]];
    */
    
    /*NO.3画一个正方形图形 没有边框
    CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 0.5);
    CGContextFillRect(context, CGRectMake(20, 100, 100, 100));
    CGContextStrokePath(context);
     */
    
    /*NO.4画正方形边框
    CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 0.5);
    CGContextSetLineWidth(context, 1);
    CGContextAddRect(context, CGRectMake(10, 100, 100, 100));
    CGContextStrokePath(context);
    */
    
    
    /*NO.5画方形背景颜色
    CGContextTranslateCTM(context, 0.0f, 460);
    CGContextScaleCTM(context, 1.0f, -1.0f);
    UIGraphicsPushContext(context);
    CGContextSetLineWidth(context, 320);
    CGContextSetRGBStrokeColor(context,250.0/255, 250.0/255, 210.0/255, 1.0);
    CGContextStrokeRect(context, CGRectMake(0, 0, 320, 460));
    UIGraphicsPopContext();
     */

    
    /*NO.6椭圆
    CGRect aRect = CGRectMake(80, 80, 160, 100);
    CGContextSetRGBStrokeColor(context, 0.5, 0.5, 0.5, 0.5);
    CGContextSetLineWidth(context, 2);
    CGContextAddEllipseInRect(context, aRect);  //椭圆
    CGContextStrokePath(context);
    //    CGContextDrawPath(context, kCGPathFillStroke);
    */
    
    /*NO.7
    CGContextBeginPath(context);
    CGContextSetRGBStrokeColor(context, 0, 0, 1, 1);
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddArcToPoint(context, 50, 100, 50, 150, 50);
    CGContextStrokePath(context);
    */
    
    /*NO.8渐变
    CGContextClip(context);
    CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
    CGFloat colors[] =
    {
        204.0 / 255.0, 224.0 / 255.0, 244.0 / 255.0, 1.00,
        29.0 / 255.0, 156.0 / 255.0, 215.0 / 255.0, 1.00,
        0.0 / 255.0,  50.0 / 255.0, 126.0 / 255.0, 1.00,
    };
    CGGradientRef gradient = CGGradientCreateWithColorComponents(rgb, colors, NULL, sizeof(colors)/(sizeof(colors[0])*4));
    CGColorSpaceRelease(rgb);
    CGContextDrawLinearGradient(context, gradient, CGPointMake(0.0, 0.0), CGPointMake(0.0,self.frame.size.height),kCGGradientDrawsBeforeStartLocation);
    */
    
    /*NO.9四条线画一个正方形
     //画线
    UIColor *aColor = [UIColor colorWithRed:0 green:1.0 blue:0 alpha:0];
    CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 1.0);
    CGContextSetFillColorWithColor(context, aColor.CGColor);
    CGContextSetLineWidth(context, 4.0);
    CGPoint aPoints[5];
    aPoints[0] =CGPointMake(60, 60);
    aPoints[1] = CGPointMake(260, 60);
    aPoints[2] =CGPointMake(260, 300);
    aPoints[3] = CGPointMake(60, 300);
    aPoints[4] = CGPointMake(60, 60);
    CGContextAddLines(context, aPoints, 5);
    CGContextStrokePath(context);
    */
    
    /* NO.10
    UIColor *aColor = [UIColor colorWithRed:0 green:1.0 blue:0 alpha:0];
    CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 1.0);
    CGContextSetFillColorWithColor(context, aColor.CGColor);
     //椭圆
    CGRect aRect = CGRectMake(80, 80, 160, 100);
    CGContextSetRGBStrokeColor(context, 0.6, 0.9, 0, 1.0);
    CGContextSetLineWidth(context, 3.0);
    CGContextSetFillColorWithColor(context, aColor.CGColor);
    CGContextAddRect(context, aRect);  //矩形
    CGContextAddEllipseInRect(context, aRect);  //椭圆
    CGContextStrokePath(context);
    */

    /*  NO.11
     //画一个实心的圆
    CGContextFillEllipseInRect(context, CGRectMake(90, 90, 100, 100));
    */
    
    /*NO.12 画一个菱形
    CGContextSetLineWidth(context, 2);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 150, 150);
    CGContextAddLineToPoint(context, 100, 200);
    CGContextAddLineToPoint(context, 50, 150);
    CGContextAddLineToPoint(context, 100, 100);
    CGContextStrokePath(context);
    */

    /*NO.13 画矩形
     CGContextSetLineWidth(context, 2.0);
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     CGRect rectangle = CGRectMake(60,170,200,80);
     CGContextAddRect(context, rectangle);
     CGContextStrokePath(context);
     */
    
    /*椭圆
     CGContextSetLineWidth(context, 2.0);
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     CGRect rectangle = CGRectMake(60,170,200,80);
     CGContextAddEllipseInRect(context, rectangle);
     CGContextStrokePath(context);
     */
    
    /*用红色填充了一段路径:
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 150, 150);
    CGContextAddLineToPoint(context, 100, 200);
    CGContextAddLineToPoint(context, 50, 150);
    CGContextAddLineToPoint(context, 100, 100);
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextFillPath(context);
     */
    
    /*填充一个蓝色边的红色矩形
     CGContextSetLineWidth(context, 2.0);
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     CGRect rectangle = CGRectMake(60,170,200,80);
     CGContextAddRect(context, rectangle);
     CGContextStrokePath(context);
     CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
     CGContextFillRect(context, rectangle);
     */

    /*画弧
     //弧线的是通过指定两个切点，还有角度，调用CGContextAddArcToPoint()绘制
     CGContextSetLineWidth(context, 2.0);
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     CGContextMoveToPoint(context, 100, 100);
     CGContextAddArcToPoint(context, 100,200, 300,200, 100);
     CGContextStrokePath(context);
     */

     /*绘制贝兹曲线
     //贝兹曲线是通过移动一个起始点，然后通过两个控制点,还有一个中止点，调用CGContextAddCurveToPoint() 函数绘制
     CGContextSetLineWidth(context, 2.0);
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     CGContextMoveToPoint(context, 10, 10);
     CGContextAddCurveToPoint(context, 0, 50, 300, 250, 300, 400);
     CGContextStrokePath(context);
    */

 
    
    /*绘制二次贝兹曲线
     CGContextSetLineWidth(context, 2.0);
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     CGContextMoveToPoint(context, 10, 200);
     CGContextAddQuadCurveToPoint(context, 150, 10, 300, 200);
     CGContextStrokePath(context);
     */
    
    /*绘制虚线
     CGContextSetLineWidth(context, 5);
     CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
     CGFloat dashArray[] ={2,6,4,2};
     CGContextSetLineDash(context, 3, dashArray, 4);//跳过3个再画虚线，所以刚开始有6-（3-2）＝ 5个虚点
     CGContextMoveToPoint(context, 10, 200);
     CGContextAddQuadCurveToPoint(context, 150, 10, 300, 200);
     CGContextStrokePath(context);
     */
    

    
    
    
    /*绘制图片1
    UIImage *aImage = [UIImage imageNamed:@"zhuyepaihang2.png"];
    [aImage drawInRect:CGRectMake(100, 60, aImage.size.width, aImage.size.height)];
    NSString *s = @"我的小狗";
    [s drawAtPoint:CGPointMake(0, 10) withAttributes:[NSDictionary dictionaryWithObject:[UIFont systemFontOfSize:18] forKey:NSFontAttributeName]];
     */
    


    /*绘制图片2
    UIImage *aImage = [UIImage imageNamed:@"zhuyepaihang2.png"];
    CGContextDrawImage(context, CGRectMake(0, 100, aImage.size.width, aImage.size.height), aImage.CGImage);
    */
    
    /*绘制图片3(旋转180度)
    UIImage *aImage = [UIImage imageNamed:@"zhuyepaihang2.png"];
    CGContextSaveGState(context);
    CGContextRotateCTM(context, M_PI);
    CGContextTranslateCTM(context, -aImage.size.width, -aImage.size.height);
    CGContextDrawImage(context, CGRectMake(0, 0, aImage.size.width, aImage.size.height), aImage.CGImage);
    CGContextRestoreGState(context);
     */
    
    /*
     UIImage *aImage = [UIImage imageNamed:@"zhuyepaihang2.png"];
     CGContextSaveGState(context);
     CGAffineTransform myAffine = CGAffineTransformMakeRotation(M_PI);
     myAffine = CGAffineTransformTranslate(myAffine, -aImage.size.width, -aImage.size.height);
     CGContextConcatCTM(context, myAffine);
     CGContextRotateCTM(context, M_PI);
     CGContextTranslateCTM(context, -aImage.size.width, -aImage.size.height);
     CGRect touchRect = CGRectMake(0, 0, aImage.size.width, aImage.size.height);
     CGContextDrawImage(context, touchRect, aImage.CGImage);
     CGContextRestoreGState(context);
     */
    
}


@end
